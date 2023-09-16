# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_16_210804) do
  create_table "log_fours", force: :cascade do |t|
    t.decimal "distance"
    t.decimal "duration"
    t.decimal "pace"
    t.string "surface"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_threes", force: :cascade do |t|
    t.decimal "distance"
    t.decimal "duration"
    t.decimal "pace"
    t.string "surface"
    t.string "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "log_twos", force: :cascade do |t|
    t.integer "distance"
    t.integer "duration"
    t.integer "pace"
    t.string "surface"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.date "date"
    t.integer "distance"
    t.integer "duration"
    t.integer "pace"
    t.string "surface"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.date "date"
    t.decimal "distance"
    t.string "duration"
    t.decimal "pace"
    t.string "surface"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_tests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "password_confirmation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "tests", "users"
end
