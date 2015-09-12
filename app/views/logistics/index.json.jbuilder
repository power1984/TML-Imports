json.array!(@logistics) do |logistic|
  json.extract! logistic, :id, :logistic
  json.url logistic_url(logistic, format: :json)
end
