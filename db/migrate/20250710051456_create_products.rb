class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.integer :discount_rate, null: false, default: 0
      t.integer :stock, null: false, default: 0
      t.references :category, null: false, foreign_key: true
      t.text :description
      t.float :rating
      t.integer :sales, null: false, default: 0
      t.integer :favorites, null: false, default: 0

      t.timestamps
    end
  end
end
