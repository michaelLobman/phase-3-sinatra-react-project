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

ActiveRecord::Schema.define(version: 2022_01_24_214311) do

  create_table "bottles", force: :cascade do |t|
    t.string "name"
    t.integer "aged_in_years"
    t.integer "distillery_id"
  end

  create_table "distilleries", force: :cascade do |t|
    t.string "name"
    t.integer "year_established"
    t.integer "region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "description"
  end

end
