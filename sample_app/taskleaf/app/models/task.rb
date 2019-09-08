class Task < ApplicationRecord

 # before_validation :set_nameless_name
 # 名前が無い場合にしたのprivateをコールバックして値を自動設定する

 validates :name, presence: true, length: { maximum: 50 }
 # validates :name, presence: true
 # validates :name, length: { maximum: 50 }
 # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "英文字のみが使えます" }

 validate :validate_name_not_including_comma

 private
 def validate_name_not_including_comma
	 errors.add(:name, 'にカンマを含める事はできません') if name&.include?(',')
 end
 #検証エラーをerrorsに格納する（errors.add) &.を利用してnameがnilの時はこの検証をスルー（presenceで引っかかる)
 #formatでもOK：https://railsguides.jp/active_record_validations.html

 # バリデーションで名前が無い場合に値を自動設定する場合
 #private
 #def set_nameless_name
 #	 self.name = '名前なし' if name.blank?
 #end

end
