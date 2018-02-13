class Restaurant < ApplicationRecord

  has_many :dishes
  has_one :address
end
