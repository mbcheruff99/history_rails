class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render :index
  end
  
  # def show
  #   @event = Event.find(params[:id])
  #   render :show
  # end
end
