# == Schema Information
#
# Table name: travels
#
#  id         :integer          not null, primary key
#  name       :string
#  day        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Travel < ApplicationRecord
	has_many :events
	has_many :vehicles
	has_many :students

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :day, presence: true
	validates :day, numericality: true
end