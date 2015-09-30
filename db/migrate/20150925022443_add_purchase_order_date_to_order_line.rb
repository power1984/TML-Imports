class AddPurchaseOrderDateToOrderLine < ActiveRecord::Migration
  def change
    add_column :order_lines, :purchase_order_date, :date
  end
end
