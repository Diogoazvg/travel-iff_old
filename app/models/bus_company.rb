# == Schema Information
#
# Table name: bus_companies
#
#  id         :integer          not null, primary key
#  cnpj       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BusCompany < ApplicationRecord
	has_many :vehicles

	validates :cnpj, presence: true
	validates :cnpj, numericality: true
	validates :cnpj, uniqueness: true
	validates :name, presence: true
	validates :name, uniqueness: true

	paginates_per 5
end
