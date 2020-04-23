# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_23_013737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "franchises", force: :cascade do |t|
    t.string "franch_id"
    t.string "franch_name"
    t.string "active"
    t.string "na_assoc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "player_id"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.string "birth_country"
    t.string "birth_state"
    t.string "birth_city"
    t.integer "death_year"
    t.integer "death_month"
    t.integer "death_day"
    t.string "death_country"
    t.string "death_state"
    t.string "death_city"
    t.string "first_name"
    t.string "last_name"
    t.string "given_name"
    t.integer "weight"
    t.integer "height"
    t.string "bats"
    t.string "throws"
    t.date "debut"
    t.date "final_game"
    t.string "retro_id"
    t.string "bbref_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
