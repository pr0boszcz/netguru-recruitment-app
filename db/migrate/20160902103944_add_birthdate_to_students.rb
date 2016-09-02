class AddBirthdateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birhdate, :date
  end
end
