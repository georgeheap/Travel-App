class TripsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @destinations = Destination.all
  end
  def new
    @destinations = Destination.all
    @trip = Trip.new
  end
  def show
    @trips = current_user.trips.all
  end
  def create
    @trip = current_user.trips.create(trip_params)
    redirect_to @trip
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :destination, :user_id, :from_date, :to_date)
  end

end
