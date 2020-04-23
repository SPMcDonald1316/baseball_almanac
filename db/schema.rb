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

ActiveRecord::Schema.define(version: 2020_04_23_124225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fielding_stats", force: :cascade do |t|
    t.string "player_id"
    t.integer "year_id"
    t.integer "stint"
    t.string "team_id"
    t.string "lg_id"
    t.string "pos"
    t.integer "g"
    t.integer "gs"
    t.integer "inn_outs"
    t.integer "po"
    t.integer "a"
    t.integer "e"
    t.integer "dp"
    t.integer "pb"
    t.integer "wp"
    t.integer "sb"
    t.integer "cs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "franchises", force: :cascade do |t|
    t.string "franch_id"
    t.string "franch_name"
    t.string "active"
    t.string "na_assoc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hitting_stats", force: :cascade do |t|
    t.string "player_id"
    t.integer "year_id"
    t.integer "stint"
    t.string "team_id"
    t.string "lg_id"
    t.integer "g"
    t.integer "ab"
    t.integer "r"
    t.integer "h"
    t.integer "doubles"
    t.integer "triples"
    t.integer "hr"
    t.integer "rbi"
    t.integer "sb"
    t.integer "cs"
    t.integer "bb"
    t.integer "so"
    t.integer "ibb"
    t.integer "hbp"
    t.integer "sh"
    t.integer "sf"
    t.integer "gidp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pitching_stats", force: :cascade do |t|
    t.string "player_id"
    t.integer "year_id"
    t.integer "stint"
    t.string "team_id"
    t.string "lg_id"
    t.integer "w"
    t.integer "l"
    t.integer "g"
    t.integer "gs"
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.integer "ip_outs"
    t.integer "h"
    t.integer "er"
    t.integer "hr"
    t.integer "bb"
    t.integer "so"
    t.decimal "ba_opp", precision: 4, scale: 3
    t.decimal "era", precision: 5, scale: 2
    t.integer "ibb"
    t.integer "wp"
    t.integer "hbp"
    t.integer "bk"
    t.integer "bfp"
    t.integer "gf"
    t.integer "r"
    t.integer "sh"
    t.integer "sf"
    t.integer "gidp"
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
