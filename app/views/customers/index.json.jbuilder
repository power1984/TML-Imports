json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :alias, :address, :email, :telephone, :is_forwarder, :customer_number
  json.url customer_url(customer, format: :json)
end
