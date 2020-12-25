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

ActiveRecord::Schema.define(version: 2020_12_24_120027) do

  create_table "books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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

  create_table "borrowtables", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bookid"
    t.string "bookname"
    t.string "borrowerid"
    t.date "borrowdate"
    t.date "returndate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.index ["bookid"], name: "index_borrowtables_on_bookid", unique: true
    t.index ["student_id"], name: "index_borrowtables_on_student_id"
  end

  create_table "damagebooks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bookid"
    t.string "bookname"
    t.integer "level"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookid"], name: "index_damagebooks_on_bookid", unique: true
  end

  create_table "historyborrowtables", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bookid"
    t.string "bookname"
    t.string "borrowerid"
    t.string "borrowdate"
    t.string "returndate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.index ["student_id"], name: "index_historyborrowtables_on_student_id"
  end

  create_table "journals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "journalid"
    t.string "journalname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.integer "journaltype"
    t.index ["journalid"], name: "index_journals_on_journalid", unique: true
  end

  create_table "lostbooks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bookid"
    t.string "booktitle"
    t.string "author"
    t.string "press"
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "student_id", null: false
    t.string "lostdate"
    t.string "borrowerid"
    t.index ["student_id"], name: "index_lostbooks_on_student_id"
  end

  create_table "managers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "managerid"
    t.integer "gender"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_managers_on_user_id"
  end

  create_table "searches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "press"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "studentid"
    t.string "name"
    t.integer "gender"
    t.integer "department"
    t.date "registration"
    t.date "validity"
    t.integer "credit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["studentid"], name: "index_students_on_studentid", unique: true
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "textbooks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "department"
    t.string "term"
    t.string "bookname"
    t.string "author"
    t.string "press"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "textbooksearches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bookname"
    t.string "department"
    t.string "term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unaffirmedbooks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bookid"
    t.string "booktitle"
    t.string "expected_return"
    t.string "returndate"
    t.string "overdue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "borrowerid"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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
  add_foreign_key "lostbooks", "students"
  add_foreign_key "managers", "users"
  add_foreign_key "students", "users"
end
