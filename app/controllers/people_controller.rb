class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  private def person_params
    params.require(:person).permit(:name, :date_of_passing, :byline, :about)
  end
end
