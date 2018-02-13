class DietaryTagAssociation < ApplicationRecord
  belongs_to :dietary_tag
  # belongs to a user 
  #belongs to a dish
  # possibly remove line 4
  belongs_to :tagged, polymorphic: true
end
