class PagesController < ApplicationController
  def index
  end

  def event
    @music_events = Event.where("category"=>"歌")
    @dance_events = Event.where("category"=>"舞")
    @light_events = Event.where("category"=>"光")
    @drama_events = Event.where("category"=>"劇")
  end

  def worker
    @departments = Department.all.includes(:users)
    @events = Event.all.includes(:users)
  end
end
