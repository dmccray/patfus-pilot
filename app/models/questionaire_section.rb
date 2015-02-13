class QuestionaireSection < ActiveRecord::Base
	belongs_to	:questionaire_template
	has_many	:questions
end
