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

class CampsController < ApplicationController
  def index
    @camps = Camp.all
  end
end
