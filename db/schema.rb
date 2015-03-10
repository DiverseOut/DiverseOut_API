# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150305191507) do

  create_table "admins", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.string   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "admins", ["company_id"], name: "index_admins_on_company_id"

  create_table "attribute_groups", force: :cascade do |t|
    t.string   "group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "street_num"
    t.integer  "street_num_line_2"
    t.string   "street"
    t.string   "city"
    t.string   "country"
    t.integer  "num_total_employees"
    t.integer  "num_managers"
    t.integer  "num_tech_workers"
    t.integer  "num_non_tech_workers"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string   "type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individual_attributes", force: :cascade do |t|
    t.integer  "attribute_group_id"
    t.string   "attribute_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "individual_attributes", ["attribute_group_id"], name: "index_individual_attributes_on_attribute_group_id"

  create_table "responses", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "individual_attribute_id"
    t.integer  "employee_type_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "responses", ["company_id"], name: "index_responses_on_company_id"
  add_index "responses", ["employee_type_id"], name: "index_responses_on_employee_type_id"
  add_index "responses", ["individual_attribute_id"], name: "index_responses_on_individual_attribute_id"

  create_table "survey_attribute_groups", force: :cascade do |t|
    t.integer  "survey_id"
    t.integer  "attribute_group_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_attribute_groups", ["attribute_group_id"], name: "index_survey_attribute_groups_on_attribute_group_id"
  add_index "survey_attribute_groups", ["survey_id"], name: "index_survey_attribute_groups_on_survey_id"

  create_table "surveys", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "secret_login_key"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "surveys", ["company_id"], name: "index_surveys_on_company_id"

end
