class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: { case_sensitive: false }
  validates_presence_of :url, format: {}
  validates_presence_of :user
end