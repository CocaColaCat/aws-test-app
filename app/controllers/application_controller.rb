class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :use_port, if: ->{ Rails.env.production? }

  def use_port
    class << request
      def port; 5678; end
    end
  end

end
