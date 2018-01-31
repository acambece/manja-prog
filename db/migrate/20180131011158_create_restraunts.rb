class CreateRestraunts < ActiveRecord::Migration[5.1]
  def change
    create_table :restraunts do |t|
      t.references :address, foreign_key: true
      t.string :name, null: false
      t.string :photo_url, null: false

      t.timestamps
    end
  end
end
