class PeopleController < ApplicationController

  def index
    @people= Person.all
    render :index
  end

  def show
    @person = Person.find(params[:id])
    render :show
  end

  def create 
    @person = Person.new(person_params)

    if @person.save
      render :show, status: :created
    else
      render json: { error: @person.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      render :show, status: :ok
    else
      render json: { error: @person.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    Person.find(params[:id]).destroy
    render json: { message: "Person successfully deleted" }
  end
  

  private

  def person_params
    params.permit(
      :name,
      :date_display,
      :birth_year,
      :death_year,
      :image,
      :biography,
      event_ids: [],
      location_ids: [],
      resource_ids: []
    )
  end
  

end
