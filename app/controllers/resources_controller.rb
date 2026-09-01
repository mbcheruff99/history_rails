class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
    render :index
  end
  
  def show
    @resource = Resource.find(params[:id])
    render :show
  end
  
  def create
    @resource = Resource.new(resource_params)

    if @resource.save
      render :show, status: :created
    else
      render json: { error: @resource.errors.full_messages}, status: :unprocessable_entity
    end
  end
  
  def update
    @resource = Resource.find(params[:id])

    if @resource.update(resource_params)
      render :show, status: :ok
    else
      render json: { error: @resource.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    Resource.find(params[:id]).destroy
    render json: { message: "Resource successfully deleted" }
  end
  
  
  private

  def resource_params
    params.permit(
      :title,
      :author, 
      :year,
      :organization,
      :description,
      :source_type,
      :link,
      event_ids: [],
      person_ids: [],
      location_ids: []
    )
  end
  

end
