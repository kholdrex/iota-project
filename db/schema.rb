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

ActiveRecord::Schema.define(version: 20140728112422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
    t.string   "content"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards_users", id: false, force: true do |t|
    t.integer "board_id"
    t.integer "user_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "board_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["board_id"], name: "index_categories_on_board_id", using: :btree

  create_table "checklists", force: true do |t|
    t.string   "name"
    t.boolean  "completed"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "text"
    t.integer  "rank"
    t.integer  "task_id"
    t.integer  "user_id"
    t.integer  "users_voted", array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "board_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "labels", ["board_id"], name: "index_labels_on_board_id", using: :btree

  create_table "labels_tasks", id: false, force: true do |t|
    t.integer "label_id"
    t.integer "task_id"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "due"
    t.integer  "parents_ids", array: true
    t.integer  "state"
    t.integer  "assignees",   array: true
    t.integer  "priority"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["category_id"], name: "index_tasks_on_category_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "login"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "avatar"
    t.integer  "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
