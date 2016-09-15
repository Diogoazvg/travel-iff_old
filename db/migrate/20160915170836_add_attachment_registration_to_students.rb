class AddAttachmentRegistrationToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :registration
    end
  end

  def self.down
    remove_attachment :students, :registration
  end
end
