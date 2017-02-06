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

end
