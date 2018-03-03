module WorkersHelper
  def render_motto(user)
    if user.motto.present?
      return "「#{user.motto}」"
    end
  end
end
