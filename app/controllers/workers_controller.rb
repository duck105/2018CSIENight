class WorkersController < ApplicationController
  def index
    @departments = Department.all.includes(:users)
    @events = Event.all.includes(:users)
	@users = User.all
  end
end
