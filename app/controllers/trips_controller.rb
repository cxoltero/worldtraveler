class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :drestroy]


  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show

  end

  def edit
  end

  def update
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip, notice: "Succesfully Created New Trip"
    else
      render 'new'
    end
  end

  def destroy
  end


  private

  def trip_params
    params.require(:trip).permit(:title, :description)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
