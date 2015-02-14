json.array!(@questionnaire_sections) do |questionnaire_section|
  json.extract! questionnaire_section, :id
  json.url questionnaire_section_url(questionnaire_section, format: :json)
end
