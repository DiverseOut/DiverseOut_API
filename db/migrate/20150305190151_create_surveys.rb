class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :company, index: true

      t.timestamps null: false
    end
    add_foreign_key :surveys, :companies
  end
end
