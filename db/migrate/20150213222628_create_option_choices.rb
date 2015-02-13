class CreateOptionChoices < ActiveRecord::Migration
  def change
    create_table :option_choices do |t|
      t.references	:question
      t.references	:option_type
      t.string		:name

      t.timestamps null: false
    end
  end
end
