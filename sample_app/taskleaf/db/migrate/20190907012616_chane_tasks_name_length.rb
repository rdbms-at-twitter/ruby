class ChaneTasksNameLength < ActiveRecord::Migration[5.2]
  #def change 既存テーブル定義変更(戻す場合のバージョンをコントロール）
  def up  #バージョンを上げる
	  change_column :tasks, :name, :string, limit: 100
  end
  def down #バージョンを下げる（add_columnと異なり、change_columnではバージョンを戻す際の処理をバージョンを上げる際のコードから自動生成出来ない為)
	  change_column :tasks, :name, :string
  end
end
