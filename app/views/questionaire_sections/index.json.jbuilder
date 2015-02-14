json.array!(@questionaire_sections) do |questionaire_section|
  json.extract! questionaire_section, :id
  json.url questionaire_section_url(questionaire_section, format: :json)
end
