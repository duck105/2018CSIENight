class EventsController < ApplicationController
  def index
    @music_events = Event.where("category"=>"歌")
    @dance_events = Event.where("category"=>"舞")
    @light_events = Event.where("category"=>"光")
    @drama_events = Event.where("category"=>"劇")
  end
end
