class CreateSurveyAttributeGroups < ActiveRecord::Migration
  def change
    create_table :survey_attribute_groups do |t|
      t.references :survey, index: true
      t.references :attribute_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :survey_attribute_groups, :surveys
    add_foreign_key :survey_attribute_groups, :attribute_groups
  end
end
