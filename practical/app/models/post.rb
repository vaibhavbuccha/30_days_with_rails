class Post < ApplicationRecord
  has_many_attached:post_images
  has_one :user
end
