class Position < ApplicationRecord
  belongs_to :item
  belongs_to :cart
  attr_accessible :container, :container_id, :item, :item_id,:quantity
  belongs_to :container, polymorphic: true
end
