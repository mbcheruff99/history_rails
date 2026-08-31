class LocationsController < ApplicationController

  def index
    @locations = Location.all
    render :index
  end
  
  def show
    @location = Location.find(params[:id])
    render :show
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      render :show, status: :created
    else
      render json: { error: @location.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def update
    @location = Location.find(params[:id])

    if @location.update(location_params)
      render :show, status: :ok
    else
      render json: { error: @location.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    Location.find(params[:id]).destroy
    render json: { message: "Location Successfully deleted"}, status: :no_content
  end

  private

  def location_params
    params.permit(
      :name,
      :country,
      :continent,
      :longitude,
      :latitude,
      :image,
      event_ids: [],
      person_ids: [],
      resource_ids: []
    )
  end
end
