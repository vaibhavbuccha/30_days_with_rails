class LikesController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    # binding.pry
    if already_liked > 0
      @like = Like.where(user_id: params[:user_id] ,post_id: params[:post_id])
      @like = Like.find(@like.ids[0])
      if @like.destroy
        render json: {success: "Unliked"}
      else
        render json: {success: "failed"}
      end
    else
      @like = Like.new(like_params)
      if @like.save
        render json: {success: "liked"}
      else
        render json: {success: "failed"}
      end
    end
  end

  private
  def like_params
    params.permit(:user_id , :post_id)
  end

  def already_liked
    return Like.where(user_id: params[:user_id] ,post_id: params[:post_id] ).count
  end
end
