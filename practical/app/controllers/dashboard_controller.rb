class DashboardController < ApplicationController
  before_action :check_session , only: [:index]
  layout 'application'
  def index
  end


  private
  def check_session
    if user_signed_in? == false
      redirect_to new_user_session_path
    end
  end
end
