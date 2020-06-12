class CreateWeatherForecasts < ActiveRecord::Migration[6.0]
  def change
    create_table :weather_forecasts do |t|
      t.references :prefecture, foreign_key: true, null: false
      t.integer :weather_id, null: false, comment: "天気id"
      t.string :weather_main, null: false, comment: "天気状態"
      t.string :weather_description, null: false, comment: "天気詳細"
      t.string :weather_icon, null: false, comment: "天気アイコン"
      t.integer :main_temp, null: false, comment: "気温"
      t.integer :main_min, null: false, comment: "最低気温"
      t.integer :main_max, null: false, comment: "最高気温"
      t.integer :rain_1h, null: false, comment: "降水情報"
      t.integer :clouds_all, null: false, comment: "曇り情報"
      t.integer :location_id, null: false, comment: "ロケーションID"
      t.string :location_name, null: false, comment: "ロケーション名"
      t.datetime :acquired_at, null: false, comment: "取得日時"
      t.timestamps
    end
  end
end
