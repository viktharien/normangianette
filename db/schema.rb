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

ActiveRecord::Schema.define(version: 20180228010628) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phrases", force: :cascade do |t|
    t.text "english"
    t.text "normansk"
    t.integer "word_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_phrases_on_category_id"
    t.index ["word_id"], name: "index_phrases_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "eng_si"
    t.string "eng_pl"
    t.string "nor_si"
    t.string "nor_pl"
    t.string "nor_def"
    t.string "nor_defpl"
    t.string "nor_past"
    t.string "nor_pres"
    t.string "nor_fut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.index ["category_id"], name: "index_words_on_category_id"
  end

end
