class CreateOptionTypes < ActiveRecord::Migration
  def change
    create_table :option_types do |t|
      t.string :descr

      t.timestamps null: false
    end
  end
end
