class RemoveItemAndQuantityFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :item_id, :integer
    remove_column :orders, :quantity, :integer
  end
end
