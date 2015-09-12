json.array!(@trackings) do |tracking|
  json.extract! tracking, :id, :tracking_number, :logistic
  json.url tracking_url(tracking, format: :json)
end
