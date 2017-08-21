class Item < ApplicationRecord
  has_and_belongs_to_many :carts
  validates :price, :weight, numericality: { greater_than: 0 },
presence: true
end
