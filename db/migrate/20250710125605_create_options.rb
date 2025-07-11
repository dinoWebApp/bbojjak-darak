class CreateOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :options do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
