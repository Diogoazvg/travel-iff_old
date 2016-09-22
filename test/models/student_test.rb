# == Schema Information
#
# Table name: students
#
#  id                        :integer          not null, primary key
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  person_id                 :integer
#  registration_file_name    :string
#  registration_content_type :string
#  registration_file_size    :integer
#  registration_updated_at   :datetime
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
