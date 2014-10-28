class User < ActiveRecord::Base
  has_many :posts
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
end