class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.references :address, foreign_key: true
      t.string :name, null: false
      t.string :photo_url, null: false
      t.string :street_address, null: false
      t.string :apartment_address
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.timestamps
    end
  end
end
