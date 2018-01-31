class CreateDietaryTagAssociations < ActiveRecord::Migration[5.1]
  def change
    create_table :dietary_tag_associations do |t|
      t.references :tagged, polymorphic: true
      t.belongs_to :dietary_tag, null: false

      t.timestamps
    end
  end
end
