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

ActiveRecord::Schema.define(version: 20160408200903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "one",        null: false
    t.string   "two",        null: false
    t.string   "three",      null: false
    t.string   "four",       null: false
    t.string   "five",       null: false
    t.string   "six",        null: false
    t.string   "seven",      null: false
    t.string   "eight",      null: false
    t.string   "nine",       null: false
    t.string   "ten",        null: false
    t.integer  "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["list_id"], name: "index_items_on_list_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "image_ref"
    t.string   "source_ref"
    t.string   "list_desc"
    t.string   "list_title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lists", ["user_id"], name: "index_lists_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "up_vote"
    t.integer  "down_vote"
    t.integer  "aggregate_vote"
    t.integer  "user_id"
    t.integer  "list_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "votes", ["list_id"], name: "index_votes_on_list_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

  add_foreign_key "items", "lists"
  add_foreign_key "lists", "users"
  add_foreign_key "votes", "lists"
  add_foreign_key "votes", "users"
end
