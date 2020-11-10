class CreatePostHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :post_homeworks do |t|
      t.integer :teacher_id, null: false
      t.string :name, null: false
      t.binary :file, null: false
      t.integer :subject, null: false, default: 0

      t.timestamps
    end
  end
end
