class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :company, index: true

      t.timestamps null: false
    end
    add_foreign_key :responses, :companies
    add_foreign_key :responses, :individual_attributes
    add_foreign_key :responses, :employee_types
  end
end
