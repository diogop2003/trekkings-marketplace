class Order < ApplicationRecord
  belongs_to :user
  belongs_to :trekking
  validates :address, :number, :complement, :name,  presence: true
  validates :cpf, presence: true
  validates :cardnumber, presence: true
  validates :code, presence: true
  validates :validates, presence: true
end
