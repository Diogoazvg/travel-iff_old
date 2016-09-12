# == Schema Information
#
# Table name: students
#
#  id           :integer          not null, primary key
#  registration :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  person_id    :integer
#  event_id     :integer
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
