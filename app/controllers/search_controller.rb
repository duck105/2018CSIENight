class SearchController < ApplicationController
  def index
    byebug
    if params[:name].length == 2
      @user = User.where('name LIKE ?', "#{params[:name].first}"+"　"+"#{params[:name].last}").includes(:events).first 
    else
      @user = User.where('name LIKE ?', "#{params[:name]}").includes(:events).first 
    end
    if @user.present?
      if @user.events.present?
        time = @user.events.order("schedule" => "asc").first.schedule.split('-').first.to_time
        @arrive_time = (time.to_time-10*60).strftime("%H:%M")
      else
        @arrive_time = "18:00"
      end
      @recommend = Event.all_except(@user.events).sample
      @friend = User.all_except(@user).sample
    else
      @recommend = Event.all.sample
      @friend = User.all.sample
    end
  end
end
