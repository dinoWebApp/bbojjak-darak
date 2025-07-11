class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many_attached :photos

  validates :photos, content_type: [ "image/png", "image/jpeg" ], size: { less_than: 2.megabytes }, limit: { max: 5 }
end
