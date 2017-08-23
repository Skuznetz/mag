class Item < ApplicationRecord
  has_and_belongs_to_many :carts
  validates :price, :weight, numericality: { greater_than: 0 },
  presence: true
  has_many :positions
  has_many :carts, through: :positions
end
