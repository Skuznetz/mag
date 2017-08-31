class Item < ApplicationRecord
  has_and_belongs_to_many :carts
  validates :price, :weight, numericality: { greater_than: 0 },presence: true
  has_many  :positions
  has_many  :carts, through: :positions
  has_many  :images, as: :imageable
  has_many  :positions
  has_many  :carts, through: :positions, source: :container,source_type: "Cart"
  has_many  :orders, through: :positions, source: :container,source_type: "Order"

  after_destroy :decrement_category_counter
private
def increment_category_counter
category.inc!(:items_count)
end
def decrement_category_counter
category.inc!(:items_count, -1)
end
end
