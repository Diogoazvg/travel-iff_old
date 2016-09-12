# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  seat       :integer
#  number     :integer
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  travel_id  :integer
#

class Vehicle < ApplicationRecord
	belongs_to :travel
end
