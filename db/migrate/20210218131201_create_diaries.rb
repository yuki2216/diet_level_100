class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :day,      null: false, default: ""
      t.string :weight,   null: false, default: ""
      t.text :exercise
      t.text :comment
      t.timestamps
    end
  end
end
