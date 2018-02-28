module SearchHelper
  def render_anchor(event)
    case event.category
    when "歌"
      "music"
    when "舞"
      "dance"
    when "光"
      "light"
    else
      "drama"
    end    
  end
end
