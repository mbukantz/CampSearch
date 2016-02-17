# == Schema Information
#
# Table name: camps
#
#  id         :integer          not null, primary key
#  name       :string
#  class      :string
#  days       :integer
#  city       :string
#  state      :string
#  cost       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Camp < ActiveRecord::Base
  has_many :campactivities
  has_many :activities, through: :campactivities

  def full_address
    "#{self.city}, #{self.state}"
  end

end
