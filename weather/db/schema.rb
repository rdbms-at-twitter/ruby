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

ActiveRecord::Schema.define(version: 2020_06_12_231434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "memo", id: false, force: :cascade do |t|
    t.serial "id", null: false
    t.text "note"
    t.datetime "created", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false, comment: "都道府県"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weather_forecasts", force: :cascade do |t|
    t.bigint "prefecture_id", null: false
    t.integer "weather_id", null: false, comment: "天気id"
    t.string "weather_main", null: false, comment: "天気状態"
    t.string "weather_description", null: false, comment: "天気詳細"
    t.string "weather_icon", null: false, comment: "天気アイコン"
    t.integer "main_temp", null: false, comment: "気温"
    t.integer "main_min", null: false, comment: "最低気温"
    t.integer "main_max", null: false, comment: "最高気温"
    t.integer "rain_1h", null: false, comment: "降水情報"
    t.integer "clouds_all", null: false, comment: "曇り情報"
    t.integer "location_id", null: false, comment: "ロケーションID"
    t.string "location_name", null: false, comment: "ロケーション名"
    t.datetime "acquired_at", null: false, comment: "取得日時"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prefecture_id"], name: "index_weather_forecasts_on_prefecture_id"
  end

  add_foreign_key "weather_forecasts", "prefectures"
end
