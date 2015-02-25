class CreateOptionChoices < ActiveRecord::Migration
  def change
    create_table :option_choices do |t|
      t.references	:question, index: true
      t.references	:option_type, index: true
      t.string		:name

      t.timestamps null: false
    end
     #add_foreign_key :option_choices, :questions
  end
end
