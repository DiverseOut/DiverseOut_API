class CreateIndividualAttributes < ActiveRecord::Migration
  def change
    create_table :individual_attributes do |t|
      t.references :attribute_group, index: true
      t.string :attribute_name

      t.timestamps null: false
    end
    add_foreign_key :individual_attributes, :attribute_groups
  end
end
