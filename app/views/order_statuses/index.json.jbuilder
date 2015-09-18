json.array!(@order_statuses) do |order_status|
  json.extract! order_status, :id, :ordered_date, :arrived_mia, :arrived_sme, :picked_up, :orders_id
  json.url order_status_url(order_status, format: :json)
end
