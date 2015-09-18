json.array!(@orders) do |order|
  json.extract! order, :id, :date, :invoice_numbers, :customers_id, :product_name, :product_description, :url, :size_color, :quantity, :online_price, :tml_price, :estimated_weight, :length, :width, :height, :down_payment, :freight_type
  json.url order_url(order, format: :json)
end
