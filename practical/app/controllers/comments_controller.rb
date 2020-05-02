class CommentsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :check_session , only: [:create]
  layout false

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    # binding.pry
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id,:post_id,:comment)
  end

end
