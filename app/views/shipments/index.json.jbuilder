json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :tracking_id, :customer_id, :length_in_inches, :width_in_inches, :height_in_inches, :weight_in_lbs
  json.url shipment_url(shipment, format: :json)
end
