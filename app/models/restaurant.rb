class Restaurant < ApplicationRecord
  has_many :dishes
  belongs_to :address

  validates :name, presence: true

  accepts_nested_attributes_for :address
end
