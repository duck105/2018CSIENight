class EventsController < ApplicationController
  def index
    @music_events = Event.where("category"=>"歌").order("priority" => "asc")
    @dance_events = Event.where("category"=>"舞").order("priority" => "asc")
    @drama_events = Event.where("category"=>"劇").order("priority" => "asc")
    @light_events = Event.where("category"=>"光").order("priority" => "asc")
  end
end
