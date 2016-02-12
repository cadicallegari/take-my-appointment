json.array!(@payments) do |payment|
  json.extract! payment, :id, :due_at, :ref_date, :paid_at, :value, :client_id
  json.url payment_url(payment, format: :json)
end
