json.array!(@option_types) do |option_type|
  json.extract! option_type, :id, :descr
  json.url option_type_url(option_type, format: :json)
end
