class Restaurant < ApplicationRecord
  has_many :dishes
  belongs_to :address

  validates :name, presence: true
end
