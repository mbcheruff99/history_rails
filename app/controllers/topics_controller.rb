class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    render :index
  end

  def show
    @topic = Topic.find(params[:id])
    render :show
  end
  
  def create
    @topic = Topic.new(topic_params)
     

    if @topic.save
      render :show, status: :created
    else render json: { error: @topic.errors.full_message}, status: :unprocessable_entity
    end 
  end

  def update 
    @topic = Topic.find(params[:id])
   
    if @topic.update(topic_params)
      render :show
    else
      render json: { errors: @topic.errors.full_message }, status: :bad_request
    end
  end

  def destroy
    @topic  = Topic.find(params[:id])
    @topic.destroy
    render json: { message: "Topic successfully deleted"}
  end
  
  private

  def topic_params
    params.permit(
      :title,
      :start_year,
      :end_year,
      :description,
      :image
    )
  end
  
end
