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

ActiveRecord::Schema.define(version: 20170308052241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "citext"

  create_table "biomes", force: :cascade do |t|
    t.citext   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chordata", force: :cascade do |t|
    t.citext   "class_name"
    t.text     "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.string   "public_id"
    t.integer  "species_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.citext   "common_name"
    t.citext   "latin_name"
    t.text     "description"
    t.string   "status"
    t.text     "habitat"
    t.text     "biology"
    t.text     "more_info"
    t.integer  "biome_id"
    t.integer  "chordatum_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
