require 'sinatra'
require "sinatra/reloader" if development?
require_relative "config/application.rb"

set :views, proc { File.join(root, "app/views") }

get '/' do
  @posts = Post.all
  erb :posts
end

post '/new_post' do
  puts params
end