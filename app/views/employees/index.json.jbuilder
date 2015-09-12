json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :id_number, :address, :date_of_birth, :phone
  json.url employee_url(employee, format: :json)
end
