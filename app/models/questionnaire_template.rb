class QuestionnaireTemplate < ActiveRecord::Base
	has_many :questionnaire_sections
	has_one	 :qt_type
end
