json.array!(@questionaire_templates) do |questionaire_template|
  json.extract! questionaire_template, :id
  json.url questionaire_template_url(questionaire_template, format: :json)
end
