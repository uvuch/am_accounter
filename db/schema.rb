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

ActiveRecord::Schema[7.0].define(version: 2022_09_30_031432) do
  create_table "aircraft", force: :cascade do |t|
    t.string "manufacturer", null: false
    t.string "model", limit: 32, null: false
    t.string "ac_number", limit: 10, null: false
    t.decimal "consumption", precision: 5, scale: 2, null: false
    t.integer "co2", limit: 2, null: false
    t.integer "distance", null: false
    t.integer "speed", null: false
    t.integer "rw_length", null: false
    t.integer "a_check_cost", null: false
    t.integer "a_check_hours", null: false
    t.integer "cost", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
