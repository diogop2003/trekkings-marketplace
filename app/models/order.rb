class Order < ApplicationRecord
  belongs_to :user
  belongs_to :trekking
  validates :address, :number, :complement, :name,  presence: true
  validates :cpf, :format => { :with => /[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}/}, presence: true
  validates :cardnumber, :format => { :with => /\A4[0-9]{12}(?:[0-9]{3})?\z/}, presence: true
  validates :code, :format => { :with => /[0-9]{3, 4}/}, presence: true
  validates :validates, :format => { :with => /(0[1-9]|1[0-2])\/?([0-9]{2})/}, presence: true
end
