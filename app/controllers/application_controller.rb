class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def index
    render 'static/index'
  end
end
