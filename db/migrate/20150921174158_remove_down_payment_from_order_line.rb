class RemoveDownPaymentFromOrderLine < ActiveRecord::Migration
  def change
    remove_column :order_lines, :down_payment ,:decimal
  end
end
