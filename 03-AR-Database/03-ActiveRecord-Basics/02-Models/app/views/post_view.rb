class PostView
  def display_with_index(posts)
    puts "List all posts"
    posts.each do |post|
      puts "#{post.id} - #{post.name} #{post.url} #{post.votes}"
    end
  end

  def ask_for_name_url_and_votes
    attributes = {}
    puts "What's the post name ?"
    print "> "
    attributes[:name] = gets.chomp
    puts "Please What's your url ?"
    print "> "
    attributes[:url] = gets.chomp
    puts "What's the votes ?"
    print "> "
    attributes[:votes] = gets.chomp
    return attributes
  end

  def update_post
    new_attributes = {}
    puts "Enter the post ID you want to edit"
    print "> "
        begin
          id_post = gets.chomp.to_i
        rescue ArgumentError
          puts "Ce n'est pas un id correct"
        end
    puts "Edit a new name for your post"
    print "> "
    new_attributes[:name] = gets.chomp
    puts "Edit an url for your post"
    print "> "
    new_attributes[:url] = gets.chomp
    return id_post, new_attributes
  end

  def destroy_post
    puts "what ID's post do you want to delete ?"
    print "> "
    id_post = gets.chomp.to_i
  end

  def upvote_post
    puts "For which ID's post do you want to vote ?"
    print "> "
    id_post = gets.chomp.to_i
    return id_post
  end
end