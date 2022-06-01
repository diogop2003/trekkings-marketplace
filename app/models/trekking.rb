class Trekking < ApplicationRecord
  belongs_to :user
  has_one_attached :url_image
end
