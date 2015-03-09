class CreateAttributeGroups < ActiveRecord::Migration
  def change
    create_table :attribute_groups do |t|
      t.string :group_name

      t.timestamps null: false
    end
  end
end
