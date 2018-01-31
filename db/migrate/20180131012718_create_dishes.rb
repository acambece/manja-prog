class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name, null: false
      t.string :photo_url, null: false
      t.text :description
      t.belongs_to :restraunt

      t.timestamps
    end
  end
end
