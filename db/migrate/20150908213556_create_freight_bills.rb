class CreateFreightBills < ActiveRecord::Migration
  def change
    create_table :freight_bills do |t|
      t.string :invoice_number
      t.references :shipper, index: true, foreign_key: true
      t.date :date
      t.decimal :total_weight_in_lbs
      t.decimal :total_volume_in_cft
      t.decimal :cost

      t.timestamps null: false
    end
  end
end
