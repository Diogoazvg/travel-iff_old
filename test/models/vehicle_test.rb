# == Schema Information
#
# Table name: vehicles
#
#  id             :integer          not null, primary key
#  seat           :integer
#  price          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  travel_id      :integer
#  bus_company_id :integer
#  order_number   :integer
#

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
