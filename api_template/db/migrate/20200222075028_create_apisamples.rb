class CreateApisamples < ActiveRecord::Migration[5.1]
  def change
    create_table :apisamples do |t|
      t.string :name

      t.timestamps
    end
  end
end
