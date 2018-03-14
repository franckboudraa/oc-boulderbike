class RidersController < ApplicationController
  def index
    @riders = Rider.all
    render json: @riders
  end

  def show
    @rider = Rider.where(id: params[:id])
    render json:@rider
  end
end
