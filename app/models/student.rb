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
#  travel_id    :integer
#

class Student < ApplicationRecord
	belongs_to :person, inverse_of: :students
	belongs_to :event
	belongs_to :travel
	
	#validates :registration, uniqueness: true
	validates :registration, presence: true
	validates :event_id, presence: true
	validates :person, presence: true
	validates :travel_id, presence: true

	accepts_nested_attributes_for :person
end
