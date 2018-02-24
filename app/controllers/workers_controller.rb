class WorkersController < ApplicationController
  def index
    @departments = Department.all.includes(:users)
    @events = Event.all.includes(:users)
  end
end
