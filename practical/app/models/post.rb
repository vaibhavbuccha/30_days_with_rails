class Post < ApplicationRecord
  has_many_attached:post_images
  has_one :users
  has_many :likes, dependent: :destroy
  has_many :comments
  validates_presence_of :title, :content
end
