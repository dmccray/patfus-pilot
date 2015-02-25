json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :organization_type_id
  json.url organization_url(organization, format: :json)
end
