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

ActiveRecord::Schema.define(version: 20140627175552) do

  create_table "aplikace_platforms", force: true do |t|
    t.integer  "aplikace_id"
    t.integer  "platform_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aplikaces", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platforms", force: true do |t|
    t.string   "platform"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "previews", force: true do |t|
    t.string   "preview_file_name"
    t.string   "preview_content_type"
    t.integer  "preview_file_size"
    t.datetime "preview_updated_at"
    t.integer  "aplikace_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "previews", ["aplikace_id"], name: "index_previews_on_aplikace_id"

  create_table "versions", force: true do |t|
    t.integer  "aplikace_id"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
