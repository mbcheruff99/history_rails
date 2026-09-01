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
    else 
      render json: { error: @topic.errors.full_messages }, status: :unprocessable_entity
    end 
  end

  def update 
    @topic = Topic.find(params[:id])
   
    if @topic.update(topic_params)
      render :show, status: :ok
    else
      render json: { errors: @topic.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    Topic.find(params[:id]).destroy
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
