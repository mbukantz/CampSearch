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

  def show
    binding.pry
    @camp = Camp.find(params[:id])
  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.new(camp_params)
    if @camp.save
      #redirect_to somewhere
    else
      render 'new'
    end
  end

  private
  def camp_params
    params.require(:camp).permit(:id, :name, :class, :days, :city, :state, :cost, activity_attributes: [:name, :category])
  end
end
