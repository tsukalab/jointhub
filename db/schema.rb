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

ActiveRecord::Schema.define(version: 20170131165208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "joint_parts", force: :cascade do |t|
    t.integer  "joint_id",   null: false
    t.integer  "part_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["joint_id"], name: "index_joint_parts_on_joint_id", using: :btree
    t.index ["part_id"], name: "index_joint_parts_on_part_id", using: :btree
  end

  create_table "joints", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.string   "image",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "stl",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "joint_parts", "joints"
  add_foreign_key "joint_parts", "parts"
end
