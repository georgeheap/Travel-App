class PagesController < ApplicationController

  def home
    @destinations = Destination.where("score IS NOT NULL").order("score DESC").limit(4)
  end
end
