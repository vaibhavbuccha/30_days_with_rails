class DashboardController < ApplicationController
  before_action :check_session , only: [:index]
  before_action :get_user_detail, only: [:index]
  layout 'application'
  def index
  end


  private

  def get_user_detail
    @user = User.find(current_user.id)
  end
end
