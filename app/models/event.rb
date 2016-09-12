# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  day        :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
end
