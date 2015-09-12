json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :bank_id, :date, :amount
  json.url deposit_url(deposit, format: :json)
end
