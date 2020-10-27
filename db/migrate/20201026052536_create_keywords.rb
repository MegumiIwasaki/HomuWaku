class CreateKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords do |t|
      t.integer :student_id, null: false
      t.string :words, null: false
      t.integer :is_active, null: false, default: 0

      t.timestamps
    end
  end
end
