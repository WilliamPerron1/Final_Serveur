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

ActiveRecord::Schema.define(version: 2021_11_15_155225) do

  create_table "games", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "creator_id", null: false
    t.bigint "opponent_id", null: false
    t.bigint "winner_id"
    t.bigint "player_turn_id"
    t.text "game_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_games_on_creator_id"
    t.index ["opponent_id"], name: "index_games_on_opponent_id"
    t.index ["player_turn_id"], name: "index_games_on_player_turn_id"
    t.index ["winner_id"], name: "index_games_on_winner_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "users", column: "creator_id"
  add_foreign_key "games", "users", column: "opponent_id"
  add_foreign_key "games", "users", column: "player_turn_id"
  add_foreign_key "games", "users", column: "winner_id"
end
