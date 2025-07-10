class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :thumbnails
  has_one_attached :description_img

  validates :thumbnails, content_type: [ "image/png", "image/jpeg" ], size: { less_than: 2.megabytes }
  validates :description_img, content_type: [ "image/png", "image/jpeg" ], size: { less_than: 2.megabytes }
end
