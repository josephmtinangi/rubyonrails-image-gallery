class ApplicationController < ActionController::Base
  before_filter :getCategoryNav
  protect_from_forgery with: :exception
   before_action :authenticate_user!
  
  private
  def getCategoryNav
      @categoryNav = Category.all
  end
end
