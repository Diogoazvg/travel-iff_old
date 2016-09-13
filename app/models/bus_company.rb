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
end
