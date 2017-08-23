class Cart < ApplicationRecord
  belongs_to :user
  validates  :user, presence: true
  validates  :user_id, uniqueness: true
  has_and_belongs_to_many :items
  has_many :positions
  has_many :items, through: :positions
end
