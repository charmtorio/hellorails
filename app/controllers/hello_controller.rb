class HelloController < ApplicationController
  def index
    name = params[:name]
    person = People.where(name: name).first
    if person.present?
      @message = "Welcome back #{person.name}"
    else
      People.create(name: name)
      @message = "Hello #{name}"
    end

    @people = People.all
  end
end
