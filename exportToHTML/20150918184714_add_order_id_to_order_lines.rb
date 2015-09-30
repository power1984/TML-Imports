class AddOrderIdToOrderLines < ActiveRecord::Migration
  def change
 OrderLine.delete_all
    add_reference :order_lines, :order, index: true, foreign_key: true
  remove_column :order_lines, :date
    remove_column :order_lines, :invoice_numbers
  end
end
