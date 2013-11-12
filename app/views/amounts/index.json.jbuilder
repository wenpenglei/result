json.array!(@amounts) do |amount|
  json.extract! amount, :one, :two, :result
  json.url amount_url(amount, format: :json)
end
