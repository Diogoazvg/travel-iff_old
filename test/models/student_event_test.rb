# == Schema Information
#
# Table name: student_events
#
#  id         :integer          not null, primary key
#  student_id :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StudentEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
