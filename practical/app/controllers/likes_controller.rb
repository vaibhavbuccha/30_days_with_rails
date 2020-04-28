class LikesController < ApplicationController
  protect_from_forgery with: :null_session
  include LikesHelper

  def create
    # binding.pry
    if already_liked > 0
      @like = Like.where(user_id: params[:user_id] ,post_id: params[:post_id])
      @like = Like.find(@like.ids[0])
      if @like.destroy
        total_likes = like_count( params[:post_id])
        render json: {success: "Unliked" , likes: "#{total_likes}"  }
      else
        total_likes = like_count( params[:post_id])
        render json: {success: "failed" , likes: "#{total_likes}" }
      end
    else
      @like = Like.new(like_params)
      if @like.save
        total_likes = like_count( params[:post_id])
        render json: {success: "liked" , likes:"#{total_likes}"}
      else
        total_likes = like_count( params[:post_id])
        render json: {success: "failed" , likes: "#{total_likes}"}
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
