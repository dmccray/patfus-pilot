class QuestionnaireSection < ActiveRecord::Base
	belongs_to	:questionnaire_template
	has_many	:questions
end
