class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :user_id
      t.float :latitude
      t.float :longitude
      t.string :neighbourhood

      t.timestamps
    end
  end
end
