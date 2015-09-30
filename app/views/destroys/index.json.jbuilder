json.array!(@destroys) do |destroy|
  json.extract! destroy, :id, :OrderStatus
  json.url destroy_url(destroy, format: :json)
end
