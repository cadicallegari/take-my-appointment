json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :number, :postal_code
  json.url address_url(address, format: :json)
end
