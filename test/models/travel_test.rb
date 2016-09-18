# == Schema Information
#
# Table name: travels
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  day         :string
#

require 'test_helper'

class TravelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
