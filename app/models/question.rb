class Question < ActiveRecord::Base
	belongs_to	:questionnaire_section
	has_many	:option_choices
end
