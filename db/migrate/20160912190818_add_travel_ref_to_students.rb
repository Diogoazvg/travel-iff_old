class AddTravelRefToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :travel, foreign_key: true
  end
end
