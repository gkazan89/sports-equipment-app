class AddSupplierToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :supplier_id, :integer
  end
end
