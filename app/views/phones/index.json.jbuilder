json.array!(@phones) do |phone|
  json.extract! phone, :id, :area_code, :number, :type
  json.url phone_url(phone, format: :json)
end
