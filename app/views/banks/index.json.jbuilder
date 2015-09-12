json.array!(@banks) do |bank|
  json.extract! bank, :id, :account_number, :name, :currency
  json.url bank_url(bank, format: :json)
end
