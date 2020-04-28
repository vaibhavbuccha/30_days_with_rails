class CommentsController < ApplicationController
  protect_from_forgery with: :null_session
  layout false

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    # binding.pry
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id,:post_id,:comment)
  end

end
