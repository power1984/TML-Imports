class RemoveCustomerIdFromOrderLine < ActiveRecord::Migration
  def change
    remove_column :order_lines , :customer_id
  end
end
