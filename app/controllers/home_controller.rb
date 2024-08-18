class HomeController < ApplicationController
  def index
    @people = Person.all.order(:date_of_passing)
  end
end
