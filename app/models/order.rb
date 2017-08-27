class Order < ApplicationRecord
  belongs_to :user
  has_many :positions, as: :container
has_many :items, through: :positions
end
