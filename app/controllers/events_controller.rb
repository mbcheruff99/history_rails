class EventsController < ApplicationController

  def index 
    @events = Event.all 
    render :index
  end

  def show
    @event = Event.find(params[:id])
    render :show
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      render :show, status: :created
    else
      render json: { error: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      render :show, status: :ok
    else 
      render json: { error: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end
    
  def destroy
    Event.find(params[:id]).destroy
    render json: { message: "Event successfully deleted"}, status: :no_content
  end
  
  private

  def event_params
    params.permit(
      :name,
      :date_display,
      :start_year,
      :end_year,
      :summary,
      :image,
      :topic_id,
      person_ids: [],
      location_ids: [],
      resource_ids: []
    )
  end
end
