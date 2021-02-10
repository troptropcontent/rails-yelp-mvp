class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :addresse
      t.integer :stars
      t.string :chef

      t.timestamps
    end
  end
end
