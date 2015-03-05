class CreateSurveyAttributeGroups < ActiveRecord::Migration
  def change
    create_table :survey_attribute_groups do |t|

      t.timestamps null: false
    end
  end
end
