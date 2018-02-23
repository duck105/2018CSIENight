class PagesController < ApplicationController
  def index
  end

  def event
    @events = Event.where("category" => "歌")
  end

  def worker
    @departments = Department.all.includes(:users)
    @events = Event.all.includes(:users)
  end
end
