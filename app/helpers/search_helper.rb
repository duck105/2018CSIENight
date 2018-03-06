module SearchHelper
  def render_anchor(event)
    case event.title
    when "大一民謠"
      "freshman-music"
    when "大二民謠"
      "sophomore-music"
    when "大三民謠"
      "junior-music"
    when "大四民謠"
      "senior-music"
    when "跨界民謠"
      "cross-music"
    when "大一舞"
      "freshman-dance"
    when "大二舞"
      "sophomore-dance"
    when "大三舞"
      "junior-dance"
    when "大四舞"
      "senior-dance"
    when "女舞"
      "girls-dance"
    when "男舞"
      "boys-dance"
    when "大一劇"
      "freshman-drama" 
    when "串場劇"
      "cross-drama" 
    when "光舞"
      "light"
    else
      "music"
    end    
  end
end
