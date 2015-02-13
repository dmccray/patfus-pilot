class Question < ActiveRecord::Base
	belongs_to	:questionaire_section
	has_many	:option_choices
end
