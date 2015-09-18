class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.date :ordered_date
      t.date :arrived_mia
      t.date :arrived_sme
      t.date :picked_up
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
