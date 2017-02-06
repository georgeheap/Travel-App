class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end
  def show
    @destination = Destination.find(params[:id])
    @destination.update(score: (@destination.score || 0) + 1)
    # binding.pry
    @tours = Tour.where(destination_id: @destination.id)
    respond_to do |format|
      format.html {}
      format.json {
        render :json => @destination.to_json(:include => [:tours])
      }
    end
  end



end
