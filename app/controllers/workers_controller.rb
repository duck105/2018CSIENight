class WorkersController < ApplicationController
  def index
    @departments = Department.order("order" => "asc").includes(:users)
    @events = Event.order("order" => "asc").includes(:users)
    @users = User.all
  end
end
