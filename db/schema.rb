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

ActiveRecord::Schema.define(version: 20160210005832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrations", force: :cascade do |t|
    t.string   "section_header"
    t.text     "section_text"
    t.string   "subsection_header"
    t.text     "subsection_text"
    t.string   "url_links"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "admissions", force: :cascade do |t|
    t.string   "section_header"
    t.text     "section_text"
    t.string   "subsection_header"
    t.text     "subsection_text"
    t.string   "url_links"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "editable_page_years", force: :cascade do |t|
    t.integer  "year_id"
    t.integer  "editable_page_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "editable_page_years", ["editable_page_id"], name: "index_editable_page_years_on_editable_page_id", using: :btree
  add_index "editable_page_years", ["year_id"], name: "index_editable_page_years_on_year_id", using: :btree

  create_table "editable_pages", force: :cascade do |t|
    t.text     "section_content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "general_informations", force: :cascade do |t|
    t.string   "section_header"
    t.text     "section_text"
    t.string   "subsection_header"
    t.text     "subsection_text"
    t.string   "url_links"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "policies", force: :cascade do |t|
    t.string   "section_header"
    t.text     "section_text"
    t.string   "subsection_header"
    t.text     "subsection_text"
    t.string   "url_links"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "years", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage_header"
    t.text     "homepage_text"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "editable_page_years", "editable_pages"
  add_foreign_key "editable_page_years", "years"
end
