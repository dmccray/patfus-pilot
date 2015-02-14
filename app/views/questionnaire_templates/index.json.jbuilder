json.array!(@questionnaire_templates) do |questionnaire_template|
  json.extract! questionnaire_template, :id
  json.url questionnaire_template_url(questionnaire_template, format: :json)
end
