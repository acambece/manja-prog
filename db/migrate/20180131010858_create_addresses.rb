class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :line_1, null: false
      t.string :line_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false

      t.timestamps
    end
  end
end
