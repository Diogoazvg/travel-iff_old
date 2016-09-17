# == Schema Information
#
# Table name: travels
#
#  id          :integer          not null, primary key
#  name        :string
#  day         :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class Travel < ApplicationRecord
	has_many :events
	has_many :vehicles
	has_many :students

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :day, presence: true
	validates :description, presence: true

	paginates_per 5

	scope :search, -> (busca){where("name like ?", "%#{busca}%")
  	}

  	scope :search2, -> (busca){where("description like ?", "%#{busca}%")
  	}

  	scope :search3, -> (busca){where("command like ?", "%#{busca}%")
  	}
end
