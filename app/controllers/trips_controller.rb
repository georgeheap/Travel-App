class TripsController < ApplicationController
  def index
     if current_user
       @trips = current_user.trips
     else
       redirect_to user_path
     end
  end
  def new
    @destinations = Destination.all
    @trip = Trip.new
  end
  def show
    @trip = current_user.trips.find(params[:id])
    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
  def create
    # binding.pry
    @trip = current_user.trips.create(trip_params)
    redirect_to user_trip_path(current_user.id, @trip.id)
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :destination_id, :destination, :user_id, :from_date, :to_date)
  end

end
