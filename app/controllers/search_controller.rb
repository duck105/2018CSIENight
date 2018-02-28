class SearchController < ApplicationController
  def index
    @user = User.where('name LIKE ?', "%#{params[:name]}%").includes(:events).first 
    if @user.present?
      if @user.events.present?
        time = @user.events.order("schedule" => "asc").first.schedule.split('-').first.to_time
        @arrive_time = (time.to_time-5*60).strftime("%H:%M")
      else
        @arrive_time = "18:00"
      end
    end
    @recommend = Event.offset(rand(Event.count)).first
    case @recommend.category
    when "歌"
      @rec_category = "music"
    when "舞"
      @rec_category = "dance"
    when"光"
      @rec_category = "light"
    else
      @rec_category = "drama"
    end
  end
end
