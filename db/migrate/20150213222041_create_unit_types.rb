class CreateUnitTypes < ActiveRecord::Migration
  def change
    create_table :unit_types do |t|
      t.string	:descr
      t.string	:abbr

      t.timestamps null: false
    end
  end
end
