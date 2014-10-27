class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        t.string :name
        t.string :url
        t.timestamps
    end
  end
end

class AddUrlToCreatePosts < ActiveRecord::Migration
  def change
    add_column :posts, :url, :string
  end
end

class AddVotesToCreatePosts < ActiveRecord::Migration
  def change
    add_column :posts, :votes, :integer
  end
end

# TODO: your code here to create the posts table