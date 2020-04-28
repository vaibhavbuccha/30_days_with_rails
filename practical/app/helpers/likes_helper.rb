module LikesHelper
  def check_like(post_id)
    return Like.where(post_id: post_id , user_id: current_user.id).count
  end

  def like_count(post_id)
    return Like.where(post_id: post_id).count
  end
end
