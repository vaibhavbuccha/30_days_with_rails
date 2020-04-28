class Post < ApplicationRecord
  has_many_attached:post_images
  has_one :users
  has_many :likes, dependent: :destroy
  validates_presence_of :title, :content
end
