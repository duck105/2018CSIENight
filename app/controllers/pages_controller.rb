class PagesController < ApplicationController
  def index
  end
  def sponser
  	@sponsors = Sponsor.all
  end
  def event
    @events = Event.all
  end
end
