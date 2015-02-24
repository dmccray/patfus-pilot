class CreateQuestionnaireTemplates < ActiveRecord::Migration
  def change
    create_table 	:questionnaire_templates do |t|
      t.string		:name
      t.references	:qt_type
      t.text		:instructions
      t.text		:comments

      t.references 	:organization
      t.timestamps null: false
    end
  end
end
