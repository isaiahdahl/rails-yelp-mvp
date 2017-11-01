class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.integer :phone, :limit => 8
      t.string :category

      t.timestamps
    end
  end
end
