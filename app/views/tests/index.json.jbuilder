json.array!(@tests) do |test|
  json.extract! test, :id, :help, :me, :fak
  json.url test_url(test, format: :json)
end
