class PostsController < ApplicationController
  layout 'application'
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post successfully updated..."
      redirect_to all_post_path
    else
      flash[:danger] = "Something wents wrong! try again..."
      render @post
    end
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title,:content,:user_id,post_images:[])
  end
end
