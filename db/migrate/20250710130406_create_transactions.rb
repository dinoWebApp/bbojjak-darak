class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.integer :amount, null: false
      t.string :product_name, null: false
      t.string :option_name, null: false
      t.string :customer_name, null: false
      t.integer :quantity, null: false
      t.string :customer_address, null: false
      t.string :customer_phone_number, null: false
      t.datetime :paid_at, null: false
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
