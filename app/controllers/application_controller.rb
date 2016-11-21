class ApplicationController < ActionController::Base
  before_filter :getCategoryNav
  protect_from_forgery with: :exception
  
  private
  def getCategoryNav
      @categoryNav = Category.all
  end
end
