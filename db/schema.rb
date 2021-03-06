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

ActiveRecord::Schema.define(version: 20160528140350) do

  create_table "mentors", force: :cascade do |t|
    t.string   "area"
    t.string   "period"
    t.text     "content"
    t.integer  "personal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "participates", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "about"
    t.string   "region"
    t.string   "where"
    t.string   "meet_time"
    t.text     "content"
    t.integer  "user_id"
    t.string   "image_url",   default: ""
    t.integer  "total_num"
    t.integer  "current_num", default: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "grade"
    t.string   "region"
    t.string   "phone"
    t.integer  "gender"
    t.integer  "language"
    t.string   "user_img_url"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["gender"], name: "index_users_on_gender"
  add_index "users", ["grade"], name: "index_users_on_grade"
  add_index "users", ["language"], name: "index_users_on_language"
  add_index "users", ["phone"], name: "index_users_on_phone"
  add_index "users", ["region"], name: "index_users_on_region"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["user_img_url"], name: "index_users_on_user_img_url"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
