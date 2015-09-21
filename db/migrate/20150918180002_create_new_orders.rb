class CreateNewOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :invoice_number
      t.date :order_date
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
