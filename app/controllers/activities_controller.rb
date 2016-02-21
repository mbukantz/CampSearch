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

class ActivitiesController < ApplicationController


  def create
    if request.xhr?
      @activity = Activity.create(activity_params)
      @campactivity = Campactivity.create(campactivity_params)
      html_string = render_to_string 'activities/_activity', locals: {activity: @activity}, layout: false
      render json: {template: html_string}
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :category,campactivity_attributes: [:camp_id, :activity_id])
  end

  def campactivity_params
    params.require(:activity).permit(:camp_id, :activity_id)
  end

end
