class DietaryTagAssociation < ApplicationRecord
  belongs_to :dietary_tag
  belongs_to :tagged, polymorphic: true
end
