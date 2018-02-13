class User < ApplicationRecord
  include DietaryTagAssociations

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

end
