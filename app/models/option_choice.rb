class OptionChoice < ActiveRecord::Base
	belongs_to	:question
	has_one		:option_type
end
