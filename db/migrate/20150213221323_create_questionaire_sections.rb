class CreateQuestionaireSections < ActiveRecord::Migration
  def change
    create_table :questionaire_sections do |t|
      t.references	:questionaire_template
      t.string		:name
      t.string		:title
      t.string		:subtitle
      t.string		:required_yn, :limit => 1

      t.timestamps null: false
    end
  end
end
