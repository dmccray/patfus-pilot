class QuestionnaireTemplate < ActiveRecord::Base
	has_many :questionnaire_sections
end
