json.array!(@input_types) do |input_type|
  json.extract! input_type, :id, :descr
  json.url input_type_url(input_type, format: :json)
end
