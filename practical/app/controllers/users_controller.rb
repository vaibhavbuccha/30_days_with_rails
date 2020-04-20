class UsersController < ApplicationController
  before_action :get_user , only: [:show,:edit]
  layout 'application'
  def show
  end

  def edit
  end

  def update
    @user = User.find(params[:format])
    if @user.update_attributes(user_params)
        flash[:success] = "Profile Successfully Updated.."
        redirect_to users_path
    else
        flash[:danger] = "Somthing Wents Wrong.."
        redirect_to users_path
    end
  end

  def destroy
  end

  private
  def get_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:image)
  end
end
