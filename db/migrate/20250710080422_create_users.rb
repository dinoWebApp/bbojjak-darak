class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :address
      t.string :detail_address
      t.string :email, null: false
      t.string :password

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
