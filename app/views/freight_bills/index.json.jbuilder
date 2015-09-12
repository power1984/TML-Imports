json.array!(@freight_bills) do |freight_bill|
  json.extract! freight_bill, :id, :invoice_number, :shipper_id, :date, :total_weight_in_lbs, :total_volume_in_cft, :cost
  json.url freight_bill_url(freight_bill, format: :json)
end
