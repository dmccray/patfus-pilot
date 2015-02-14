class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references	:questionnaire_sections	
      t.string			:name
      t.string			:subtext
      t.references 	:input_type
      t.references	:unit_type

      t.timestamps null: false
    end
  end
end
