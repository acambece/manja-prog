class Restraunt < ApplicationRecord
  belongs_to :address

  has_many :dishes
end
