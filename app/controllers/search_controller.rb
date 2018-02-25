class SearchController < ApplicationController
  def index
    @user = User.where('name LIKE ?', "%#{params[:name]}%").includes(:events).first 
    if @user.present?
      time = @user.events.order("schedule" => "asc").first.schedule.split('~').first.to_time
      @arrive_time = (time.to_time-5*60).strftime("%H:%M")
    end
  end
end
