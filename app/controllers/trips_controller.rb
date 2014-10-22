class TripsController < ApplicationController
  before_action :find_trip, only: [:show, :edit, :update, :destroy]


  def index
    @trips = Trip.all.order("created_at DESC")
  end

  def new
    @trip = current_user.trips.build
  end

  def show

  end

 def create
    @trip = current_user.trips.build(trip_params)

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
    params.require(:trip).permit(:title, :description, :image)
  end

  def find_trip
    @trip = Trip.find(params[:id])
  end
end
