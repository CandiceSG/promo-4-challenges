require_relative "../models/post.rb"
require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    post = Post.all
    @view.display_with_index(post)
  end

  def create
    attributes = @view.ask_for_name_url_and_votes
    new_post = Post.new(attributes)
    new_post.save
  end

  def update
    id_post, new_attributes = @view.update_post
    find_id = Post.find(id_post)
    find_id.name = new_attributes[:name]
    find_id.url = new_attributes[:url]
    find_id.save
  end

  def destroy
   id_post = @view.destroy_post
   post_deleted = Post.find(id_post)
   post_deleted.destroy
  end

  def upvote
   id_post = @view.upvote_post
   post = Post.find(id_post)
   post.votes = 1 || + 1
   post.save
  end
end