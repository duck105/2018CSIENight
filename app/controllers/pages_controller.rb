class PagesController < ApplicationController
  def index
  end
  def sponser
  	@sponsers = Sponser.all
  end
  def event
    @events = Event.all
  end
end
