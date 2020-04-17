class DashboardController < ApplicationController
  before_action :check_session , only: [:index]
  before_action :get_user_detail, only: [:index]
  layout 'application'
  def index
  end


  private
  def check_session
    if user_signed_in? == false
      redirect_to new_user_session_path
    end
  end

  def get_user_detail
    @user = User.find(current_user.id)
  end
end
