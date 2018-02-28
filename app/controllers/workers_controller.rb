class WorkersController < ApplicationController
  def index
    @departments = Department.order("order" => "asc")
    @events = Event.order("order" => "asc")
    @users = User.all
  end
end
