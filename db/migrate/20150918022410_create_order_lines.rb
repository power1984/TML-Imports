class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.date :date
      t.string :invoice_numbers
      t.references :customer, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
      t.string :product_name
      t.string :product_description
      t.string :url
      t.string :size_color
      t.integer :quantity
      t.decimal :online_price
      t.decimal :tml_price
      t.decimal :estimated_weight
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.decimal :down_payment
      t.boolean :is_air_freight

      t.timestamps null: false
    end
  end
end
