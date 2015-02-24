class CreateQtTypes < ActiveRecord::Migration
  def change
    create_table :qt_types do |t|
      t.string 	 :descr

      t.timestamps null: false
    end
  end
end
