class RenameColumnToProduct < ActiveRecord::Migration[8.0]
  def change
    rename_column :products, :favorites, :favorites_count
  end
end
