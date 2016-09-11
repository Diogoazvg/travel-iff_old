# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  address    :string
#  identity   :string
#  cpf        :string
#  birth      :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
	validates :name, presence: true
	validates :phone, presence: true
	validates :phone, numericality: true
	validates :address, presence: true
	validates :identity, presence: true
	validates :identity, uniqueness: true
	validates :identity, numericality: true
	validates :cpf, presence: true
	validates :cpf, uniqueness: true
	validates :cpf, numericality: true
	validates :birth, presence: true
	validates :birth, numericality: true
end
