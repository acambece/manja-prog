class DietaryTag < ApplicationRecord
  has_many :dietary_tag_associations

  has_many :users, through: :dietary_tag_associations, source_type: 'User', source: :tagged
  has_many :dishes, through: :dietary_tag_associations, source_type: 'Dish', source: :tagged
end
