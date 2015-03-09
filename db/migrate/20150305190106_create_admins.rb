class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references :company, index: true
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :password_hash

      t.timestamps null: false
    end
    add_foreign_key :admins, :companies
  end
end
