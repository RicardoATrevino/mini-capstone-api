class AddSupplierId < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :supplier_id, :int
  end
end