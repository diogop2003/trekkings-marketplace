class Trekking < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one_attached :photo
  validates :name, :price, :description, :category, :photo, presence: true
  validates :category, inclusion: { in: %w[items shoes backpack clothes]}
  validates :price, numericality: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
