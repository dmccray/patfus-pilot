class OptionType < ActiveRecord::Base
	has_many	:option_choices
end
