class AddFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :photo_url, :string
    add_column :users, :bio, :text
    add_column :users, :username, :string, null: false
  end
end
