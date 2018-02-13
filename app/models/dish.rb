class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :dietary_tag_associations
  has_many :dietary_tags, through: :dietary_tag_associations
end
