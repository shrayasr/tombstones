class PeopleController < ApplicationController
  http_basic_authenticate_with name: Rails.application.credentials.basic[:username], password: Rails.application.credentials.basic[:password], except: [ :index, :show ]

  def index
    redirect_to root_url, status: :moved_permanently
  end
  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if params[:photo].present?
      @person.photo.attach(params[:photo])
    end

    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if params[:photo].present?
      @person.photo.purge if @person.photo.attached?
      @person.photo.attach(params[:photo])
    end

    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])

    if @person.photo.attached?
      @person.photo.purge
    end

    @person.destroy

    redirect_to root_url, status: :see_other
  end

  private def person_params
    params.require(:person).permit(:name, :date_of_passing, :byline, :about, :photo)
  end
end
