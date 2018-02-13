module DietaryTagAssociations
  extend ActiveSupport::Concern

  included do
    has_many :dietary_tag_associations, as: :tagged
    has_many :dietary_tags, through: :dietary_tag_associations
  end
end
