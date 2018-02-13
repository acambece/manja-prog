class Dish < ApplicationRecord
  include DietaryTagAssociations
  belongs_to :restaurant

end
