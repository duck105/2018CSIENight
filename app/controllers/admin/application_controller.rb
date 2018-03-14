# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_admin

    def raise_404
      raise ActionController::RoutingError.new('Not Found!')
    end

    def authenticate_admin
      if Rails.env.development?
        # nothing  
      else 
        authenticate_user!
        if current_user and current_user.is_admin?
          # nothing
        else 
          raise_404
        end
      end
    end
    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
