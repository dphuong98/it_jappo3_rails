class UsersController < ApplicationController
  before_action :require_login

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to "/users/sign_in" # halts request cycle
    end
  end
  
  def show
  end
end
