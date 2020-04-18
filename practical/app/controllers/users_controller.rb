class UsersController < ApplicationController
  before_action :get_user , only: [:show,:edit]
  layout 'application'
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def get_user
    @user = User.find(params[:format])
  end
end
