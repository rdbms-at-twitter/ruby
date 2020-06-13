class CreatePrefectures < ActiveRecord::Migration[6.0]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false,  comment: "都道府県"
      t.string :ename, null: false, comment: "英語表記"
      t.timestamps
    end
  end
end
