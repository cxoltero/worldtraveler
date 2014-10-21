class TripsController < ApplicationController
  def index
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
  end


private

  def trip_params
    params.require(:trip).permit(:title, :description)
  end
end
