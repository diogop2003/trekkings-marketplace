class Order < ApplicationRecord
  belongs_to :user
  belongs_to :trekking
  validates :address, presence: true
end
