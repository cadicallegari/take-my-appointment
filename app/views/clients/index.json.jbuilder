json.array!(@clients) do |client|
  json.extract! client, :id, :name, :email, :birth_date, :address_id
  json.url client_url(client, format: :json)
end
