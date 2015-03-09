class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :street_num
      t.integer :street_num_line_2
      t.string :street
      t.string :city
      t.string :country
      t.integer :num_total_employees
      t.integer :num_managers
      t.integer :num_tech_workers
      t.integer :num_non_tech_workers

      t.timestamps null: false
    end
  end
end
