class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.integer :stars
      t.string :chef
      t.string :category
      t.timestamps
    end
  end
end
