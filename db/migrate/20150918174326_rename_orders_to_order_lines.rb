class RenameOrdersToOrderLines < ActiveRecord::Migration
  def change
    rename_table :orders , :order_lines
  end
end
