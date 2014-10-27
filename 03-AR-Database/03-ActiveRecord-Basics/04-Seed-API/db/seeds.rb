require "json"
require "rest-client"


response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
repos = JSON.parse(response).take(10)

repos.each do |id|
  url = "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
  json_post = RestClient.get(url)
  post = JSON.parse(json_post)
  Post.create(name: post["title"], url: post["url"], votes: post["score"])
end

# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.