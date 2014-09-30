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

ActiveRecord::Schema.define(version: 20140928125615) do

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_leaves", force: true do |t|
    t.integer  "leave_type_id"
    t.integer  "user_id"
    t.integer  "available"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employee_leaves", ["leave_type_id"], name: "index_employee_leaves_on_leave_type_id", using: :btree
  add_index "employee_leaves", ["user_id"], name: "index_employee_leaves_on_user_id", using: :btree

  create_table "leave_types", force: true do |t|
    t.string   "name"
    t.integer  "number_of_leaves"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaves", force: true do |t|
    t.integer  "user_id"
    t.integer  "leave_type_id"
    t.text     "reason"
    t.boolean  "is_without_pay"
    t.boolean  "is_supervisor_approved"
    t.datetime "leave_time_start"
    t.datetime "leave_time_end"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leaves", ["leave_type_id"], name: "index_leaves_on_leave_type_id", using: :btree
  add_index "leaves", ["user_id"], name: "index_leaves_on_user_id", using: :btree

  create_table "time_logs", force: true do |t|
    t.integer  "user_id"
    t.datetime "time_in"
    t.datetime "time_out"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "time_logs", ["user_id"], name: "index_time_logs_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "sex"
    t.date     "birthdate"
    t.string   "civil_status"
    t.string   "personal_email"
    t.string   "rc_email"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "zip"
    t.string   "home_number"
    t.string   "alt_number"
    t.string   "spouse_name"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_number"
    t.string   "emp_num"
    t.string   "job_title"
    t.string   "tin"
    t.string   "philhealth"
    t.string   "sss"
    t.date     "date_hired"
    t.date     "work_start_date"
    t.date     "work_end_date"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
