class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :day,      null: false, default: ""
      t.text :breakfast_image
      t.text :lunch_image
      t.text :dinner_image
      t.text :snack_image
      t.string :weight,   null: false, default: ""
      t.text :exercise
      t.text :comment
      t.timestamps
    end
  end
end
