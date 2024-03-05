class ChangeDescription < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 8, scale: 2
    add_column :products, :inventory_total, :integer
  end
end
