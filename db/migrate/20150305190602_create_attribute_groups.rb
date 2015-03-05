class CreateAttributeGroups < ActiveRecord::Migration
  def change
    create_table :attribute_groups do |t|

      t.timestamps null: false
    end
  end
end
