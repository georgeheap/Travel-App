class ToursController < ApplicationController

  def show
    @tour = Tour.find_by(id: params[:id])
    @destination = @tour.destination
    respond_to do |format|
      format.html {}
      format.json {
        render :json => @tour.to_json(:include => [:destination])
      }
    end
  end
  def new
    # binding.pry
    @tour = Tour.new
    @destination = Destination.find_by(id: params[:destination_id])
  end
  def create
    @tour = Tour.create(tour_params)
    redirect_to destination_tour_path(@tour.destination_id, @tour.id)
  end
  def edit
    @tour = Tour.find(params[:id])
    @destination = Destination.find_by(id: params[:destination_id])
  end

  def update
    # binding.pry
    @tour = Tour.find_by(id: params[:id])
    @tour.update(tour_params)
    redirect_to destination_tour_path(@tour.destination_id, @tour.id)
  end

  private
  def tour_params
    params.require(:tour).permit(:name, :destination_id, :tour_type, :description, :default_img, :lat, :lng, :day_of_week, :image)
  end
end
