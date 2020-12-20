# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_20_131743) do

  create_table "authors", force: :cascade do |t|
    t.string "authorid"
    t.string "name"
    t.string "nationality"
    t.date "birthdate"
    t.date "death"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["authorid"], name: "index_authors_on_authorid", unique: true
  end

  create_table "bookcases", force: :cascade do |t|
    t.string "bookcaseid"
    t.integer "floor"
    t.string "partition"
    t.string "number"
    t.integer "line"
    t.integer "column"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookcaseid"], name: "index_bookcases_on_bookcaseid", unique: true
  end

  create_table "bookclasees", force: :cascade do |t|
    t.string "classid"
    t.string "classname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classid"], name: "index_bookclasees_on_classid", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "bookid"
    t.string "title"
    t.string "author"
    t.string "press"
    t.float "price"
    t.date "intime"
    t.integer "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state"
    t.index ["bookid"], name: "index_books_on_bookid", unique: true
  end

  create_table "borrowtables", force: :cascade do |t|
    t.string "bookid"
    t.string "bookname"
    t.string "borrowerid"
    t.date "borrowdate"
    t.date "returndate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id", null: false
    t.index ["bookid"], name: "index_borrowtables_on_bookid", unique: true
    t.index ["student_id"], name: "index_borrowtables_on_student_id"
  end

  create_table "damagebooks", force: :cascade do |t|
    t.string "bookid"
    t.string "bookname"
    t.integer "level"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookid"], name: "index_damagebooks_on_bookid", unique: true
  end

  create_table "departments", force: :cascade do |t|
    t.string "departmentid"
    t.string "departmentname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["departmentid"], name: "index_departments_on_departmentid", unique: true
  end

  create_table "historyborrowtables", force: :cascade do |t|
    t.string "bookid"
    t.string "bookname"
    t.string "borrowerid"
    t.string "borrowdate"
    t.string "returndate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id", null: false
    t.index ["student_id"], name: "index_historyborrowtables_on_student_id"
  end

  create_table "journals", force: :cascade do |t|
    t.string "journalid"
    t.string "journalname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.integer "journaltype"
    t.index ["journalid"], name: "index_journals_on_journalid", unique: true
  end

  create_table "managers", force: :cascade do |t|
    t.string "managerid"
    t.string "name"
    t.integer "gender"
    t.date "intime"
    t.string "phone"
    t.string "weixin"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["managerid"], name: "index_managers_on_managerid", unique: true
  end

  create_table "materials", force: :cascade do |t|
    t.integer "departmentid"
    t.string "term"
    t.string "bookname"
    t.string "authorname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["departmentid"], name: "index_materials_on_departmentid", unique: true
  end

  create_table "presses", force: :cascade do |t|
    t.string "pressid"
    t.string "pressname"
    t.date "pressdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pressid"], name: "index_presses_on_pressid", unique: true
  end

  create_table "searches", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "press"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "studentid"
    t.string "name"
    t.integer "gender"
    t.integer "department"
    t.date "registration"
    t.date "validity"
    t.integer "credit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["studentid"], name: "index_students_on_studentid", unique: true
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "textbooks", force: :cascade do |t|
    t.string "department"
    t.string "term"
    t.string "bookname"
    t.string "author"
    t.string "press"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "textbooksearches", force: :cascade do |t|
    t.string "bookname"
    t.string "department"
    t.string "term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unaffirmedbooks", force: :cascade do |t|
    t.string "bookid"
    t.string "booktitle"
    t.string "expected_return"
    t.string "returndate"
    t.string "overdue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "borrowerid"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "userid"
    t.string "username"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["userid"], name: "index_users_on_userid", unique: true
  end

  add_foreign_key "borrowtables", "students"
  add_foreign_key "historyborrowtables", "students"
  add_foreign_key "students", "users"
end
