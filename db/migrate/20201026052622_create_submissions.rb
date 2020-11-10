class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.integer :student_id, null: false
      t.integer :post_homework_id, null: false
      t.binary :file, null: false
      t.integer :evaluation, null: false, default: 0
      t.text :comment, null: false

      t.timestamps
    end
  end
end
