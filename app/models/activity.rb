# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  name       :string
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ActiveRecord::Base
  has_many :campactivities
  has_many :camps, through: :campactivities
  accepts_nested_attributes_for :campactivities
end
