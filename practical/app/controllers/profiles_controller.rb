class ProfilesController < ApplicationController
  before_action :get_user , only: [:show,:edit]
  before_action :delete_relative_posts , only: [:destroy]
  layout 'application'
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

  def delete_relative_posts
    @posts = Post.where(user_id: current_user.id)
    if @posts.count > 0
      @posts.each do |p|
        Post.destroy(p.id)
      end
    end
  end

end
