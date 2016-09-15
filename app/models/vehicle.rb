# == Schema Information
#
# Table name: vehicles
#
#  id             :integer          not null, primary key
#  seat           :integer
#  number         :integer
#  price          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  travel_id      :integer
#  bus_company_id :integer
#

class Vehicle < ApplicationRecord
	belongs_to :travel
	belongs_to :bus_company
	has_many :drivers

	validates :seat, presence: true
	validates :seat, numericality: true
	validates :number, presence: true
	validates :number, numericality: true
	validates :price, presence: true
	validates :price, numericality: true
	validates :travel_id, presence: true
	validates :bus_company_id, presence: true

	def to_s
		"Empresa -->(#{bus_company.name}) -- Número do Veículo -->(#{number})"	
	end

	paginates_per 5
end
