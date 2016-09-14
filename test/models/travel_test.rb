# == Schema Information
#
# Table name: travels
#
#  id          :integer          not null, primary key
#  name        :string
#  day         :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

require 'test_helper'

class TravelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
