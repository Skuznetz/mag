class Cart < ApplicationRecord
  belongs_to :user
  validates  :user, presence: true
  validates  :user_id, uniqueness: true
  has_and_belongs_to_many :items
  has_many :positions
  has_many :items, through: :positions
  has_many :positions, as: :container
  has_many :items, through: :positions

  def add_item(i)
    if items.include?(i)
      positions.where(item_id: i.id).first.increment!(:quantity)
    else
      positions.create(item: i, quantity: 1)
    end
  end

  def remove_position(position_to_remove_id)
    positions.where(item_id: position_to_remove_id).first.try(:destroy)
  end
end
