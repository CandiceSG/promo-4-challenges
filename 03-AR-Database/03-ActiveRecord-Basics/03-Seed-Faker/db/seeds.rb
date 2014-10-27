require "faker"

100.times do
  post = Post.new({
    name: Faker::Company.name,
    url: Faker::Internet.url,
                  })
  post.save
end
# TODO: Write a seed to insert 100 posts in the database