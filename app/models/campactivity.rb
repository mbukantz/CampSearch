# == Schema Information
#
# Table name: campactivities
#
#  id          :integer          not null, primary key
#  camp_id     :integer
#  activity_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Campactivity < ActiveRecord::Base
  belongs_to :camp
  belongs_to :activity
end
