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

ActiveRecord::Schema.define(version: 20170211080825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.boolean  "present"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_classes", force: :cascade do |t|
    t.string   "name"
    t.integer  "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "gradient"
    t.string   "sex"
    t.string   "city"
    t.string   "address"
    t.integer  "age"
    t.string   "mobile"
    t.string   "joining_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "student_class_id"
    t.integer  "attendances_id"
    t.integer  "teacher_id"
    t.index ["attendances_id"], name: "index_students_on_attendances_id", using: :btree
    t.index ["student_class_id"], name: "index_students_on_student_class_id", using: :btree
    t.index ["teacher_id"], name: "index_students_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "address"
    t.integer  "salary"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "student_class_id"
    t.string   "joining_date"
    t.index ["student_class_id"], name: "index_teachers_on_student_class_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "mobile_number"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
