# You can use a global variable, DB, built as is:
require "sqlite3"

dir = File.dirname(__FILE__)
DB = SQLite3::Database.new(File.join(dir, "../../db/posts.db"))


class Post
  attr_reader :id, :date, :votes # TODO: implement some reader and/or writers
  attr_accessor :title, :url

  def initialize(options = {})
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = options[:date] || Time.now
    @votes = options[:votes] || 0
  end

  def upvote
    @votes += 1
  end

  def save
    if @id.nil?
      DB.execute("INSERT INTO posts (title, url, date, votes)
                VALUES ('#{@title}', '#{@url}', '#{@date.to_i}', #{@votes});")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts
            SET title = '#{@title}', url = '#{@url}', date = '#{@date.to_i}', votes = #{@votes} WHERE id = #{@id};")
    end
  end

  def destroy
    DB.execute("DELETE FROM posts WHERE id = '#{@id}';")
  end

  # me renvoie un tableau de tableau donc je lui demande le premier tableau avec l'index 0
  def self.find(id)
    columns = DB.execute("SELECT * FROM posts WHERE id = #{id};")[0]
    if columns.nil?
      nil
    else
      new_post = Post.new(
        title: columns[1],
        url: columns[2],
        date: Time.at(columns[3]),
        vote: columns[4],
        id: columns[0]
        )
    end
    return new_post
  end


  def self.all
    columns = DB.execute("SELECT * FROM posts;")
    posts = []
    columns.each do |post|
      posts << Post.new(
        id: post[0],
        title: post[1],
        url: post[2],
        date: Time.at(post[3]),
        vote: post[4]
        )
    end
    posts
  end



  # TODO: initialize instance variables from the hash options.
  # end

  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model
end

# post = Post.new({ title: "Le Wagon", url: "http://www.lewagon.org" })
# post2 = Post.new({title: "google", url: "http://google.com"})
# # post.save


# p Post.all















