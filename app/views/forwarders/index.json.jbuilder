json.array!(@forwarders) do |forwarder|
  json.extract! forwarder, :id, :first_name, :last_name, :address, :alias
  json.url forwarder_url(forwarder, format: :json)
end
