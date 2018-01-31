class Dish < ApplicationRecord
  belongs_to :restraunt
  has_many :dietary_tag_associations, as: :tagged
  has_many :dietary_tags, through: :dietary_tag_associations
end
