class HelloController < ApplicationController
  def index
    name = params[:name]
    if name == 'Charm'
      @message = "Welcome back #{name}"
    else
      @message = "Hello #{name}"
    end
  end
end
