class CreateInputTypes < ActiveRecord::Migration
  def change
    create_table :input_types do |t|
  	  t.string	:descr

      t.timestamps null: false
    end
  end
end
