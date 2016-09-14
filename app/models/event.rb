# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  day        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  travel_id  :integer
#

class Event < ApplicationRecord
	belongs_to :travel

	validates :travel_id, presence: true
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :day, presence: true
	validates :day, numericality: true	
end
