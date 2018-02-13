class PagesController < ApplicationController
  def index
  end

  def event
    @events = Event.all
  end
end
