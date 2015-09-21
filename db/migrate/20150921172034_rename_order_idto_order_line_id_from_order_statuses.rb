class RenameOrderIdtoOrderLineIdFromOrderStatuses < ActiveRecord::Migration
  def change
    OrderLine.delete_all
    Order.delete_all
    rename_column :order_statuses, :order_id , :order_line_id
  end
end
