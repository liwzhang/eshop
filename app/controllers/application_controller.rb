class ApplicationController < ActionController::Base
    before_action :authorize
    protect_from_forgery with: :exception
    include CurrentCart
    before_action :set_cart

    def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in."
        end
    end
end
