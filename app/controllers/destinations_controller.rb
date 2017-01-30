class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end
  def show
    @destination = Destination.find(params[:id])
    respond_to do |format|
      format.html {}
      format.json {}
    end
  end



end
