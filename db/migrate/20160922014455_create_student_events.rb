class CreateStudentEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :student_events do |t|
      t.references :student, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
