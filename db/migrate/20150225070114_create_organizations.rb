class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :organization_type, index: true

      t.timestamps null: false
    end
  end
end
