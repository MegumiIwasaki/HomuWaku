class ChangeColumnToNull < ActiveRecord::Migration[5.2]
  def change
  	change_column_null :submissions, :comment, true
  end
end
