class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references	:questionnaire_sections, index: true
      t.string			:name
      t.string			:subtext
      t.references 	:input_type, index: true 
      t.references	:unit_type, index: true

      t.timestamps null: false
    end
    #add_foreign_key :questions, :questionnaire_sections
  end
end
