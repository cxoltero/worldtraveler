class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]


  def index
    @trips = Trip.all.order("created_at DESC")
  end

  def new
    @trip = Trip.new
  end

  def show

  end

 def create
    @trip = Trip.new(trip_params)

    if @trip.save
      redirect_to @trip, notice: "Succesfully Created New Trip"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to @trip, notice: "Trip was succesfully updated!"
    else
      render 'edit'
    end
  end



  def destroy
    @trip.destroy
    redirect_to root_path
  end


  private

  def trip_params
    params.require(:trip).permit(:title, :description)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
