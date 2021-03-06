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

ActiveRecord::Schema.define(version: 2019_08_19_202348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.string "duration"
    t.string "hour"
    t.datetime "datetime"
    t.bigint "collection_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_type"
    t.index ["collection_id"], name: "index_events_on_collection_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "habits", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_habits_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.date "date"
    t.bigint "user_id"
    t.bigint "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_type"
    t.index ["collection_id"], name: "index_notes_on_collection_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.boolean "important"
    t.string "status"
    t.date "date"
    t.bigint "user_id"
    t.bigint "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_type"
    t.index ["collection_id"], name: "index_tasks_on_collection_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "collections"
  add_foreign_key "events", "users"
  add_foreign_key "habits", "users"
  add_foreign_key "notes", "collections"
  add_foreign_key "notes", "users"
  add_foreign_key "tasks", "collections"
  add_foreign_key "tasks", "users"
end
