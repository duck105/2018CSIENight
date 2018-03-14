module WorkersHelper
  def render_motto(user)
    if user.motto.present?
      return "「#{user.motto}」-- #{user.name} "
    end
  end
end
