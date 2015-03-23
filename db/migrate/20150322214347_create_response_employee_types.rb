class CreateResponseEmployeeTypes < ActiveRecord::Migration
  def change
    create_table :response_employee_types do |t|
      t.references :response, index: true
      t.references :employee_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :response_employee_types, :responses
    add_foreign_key :response_employee_types, :employee_types
  end
end