class CreateOrganizationTypes < ActiveRecord::Migration
  def change
    create_table :organization_types do |t|
      t.string :descr

      t.timestamps null: false
    end
  end
end
