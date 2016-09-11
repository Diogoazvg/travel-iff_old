class AddPersonRefToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :person, foreign_key: true
  end
end
