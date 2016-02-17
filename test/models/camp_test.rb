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

require 'test_helper'

class CampTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
