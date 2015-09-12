class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.references :tracking, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.decimal :length_in_inches
      t.decimal :width_in_inches
      t.decimal :height_in_inches
      t.decimal :weight_in_lbs
      t.timestamps null: false
    end
  end
end
