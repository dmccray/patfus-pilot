class CreateQuestionnaireSections < ActiveRecord::Migration
  def change
    create_table :questionnaire_sections do |t|
      t.references	:questionnaire_template, index: true
      t.string		  :name
      t.string		  :title
      t.string		  :subtitle
      t.string		  :required_yn, :limit => 1

      t.timestamps null: false
    end
    #add_foreign_key :questionnaire_sections, :questionnaire_templates
  end
end
