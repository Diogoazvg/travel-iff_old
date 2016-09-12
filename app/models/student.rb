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
	belongs_to :person
	belongs_to :event_id
	belongs_to :travel_id
	
	validates :registration, uniqueness: true
	validates :registration, presence: true

	accepts_nested_attributes_for :person
end
