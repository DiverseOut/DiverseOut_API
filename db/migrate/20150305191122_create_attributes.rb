class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.references :attribute_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :attributes, :attribute_groups
  end
end
