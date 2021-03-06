class ProfilesController < ApplicationController
  before_action :get_user , only: [:show,:edit]
  before_action :delete_relatives , only: [:destroy]
  before_action :check_session , only: [ :edit,:show ,:update ,:destroy]
  layout 'application'
  include UsersHelper

  def show
  end

  def edit
  end

  def update
    @user = User.find(params[:format])
    # binding.pry
    if @user.update_attributes(user_params)
        flash[:success] = "Profile Successfully Updated.."
        redirect_to profiles_path
    else
        flash[:danger] = "Somthing Wents Wrong.."
        redirect_to profiles_path
    end
  end

  def destroy
    if User.destroy(params[:format])
      flash[:success] = "Profile Successfully Deleted.."
      redirect_to root_path
    else
      flash[:danger] = "Somthing Wents Wrong.."
      redirect_to profiles_path
    end
  end

  private
  def get_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:gender,:dob,:image)
  end

  def delete_relatives
    delete_relative_posts
    delete_relative_comments
    delete_relative_likes
  end

end
