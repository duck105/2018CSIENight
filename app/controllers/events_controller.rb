class EventsController < ApplicationController
  def index
    @music_events = Event.where("category"=>"歌").order("order" => "asc")
    @dance_events = Event.where("category"=>"舞").order("order" => "asc")
    @light_events = Event.where("category"=>"光").order("order" => "asc")
    @drama_events = Event.where("category"=>"劇").order("order" => "asc")
  end
end
