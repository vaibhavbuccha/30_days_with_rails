class PostsController < ApplicationController
  protect_from_forgery with: :null_session
  layout 'application'
  def index
    @posts = Post.all.order('created_at DESC').page(params[:page] || 1 ).per(4)
  end

  def new
    @post = Post.new
  end

  def show
    @posts = Post.all.where(:user_id => params[:format]).order('created_at DESC')
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post successfully updated..."
      redirect_to all_post_path
    else
      flash[:danger] = "Something wents wrong! try again..."
      render 'new'
    end
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json: {success: "Post Successfully deleted.."}
  end

  private
  def post_params
    params.require(:post).permit(:title,:content,:user_id,post_images:[])
  end
end
