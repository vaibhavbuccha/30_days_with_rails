module UsersHelper
  def total_users
    return User.count
  end

  def delete_relative_posts
    @posts = Post.where(user_id: current_user.id)
    if @posts.count > 0
      @posts.each do |p|
        Post.destroy(p.id)
      end
    end
  end

  def delete_relative_comments
    @commets = Comment.where(user_id: current_user.id)
    if @commets.count > 0
      @commets.each do |c|
        Comment.destroy(c.id)
      end
    end
  end

  def delete_relative_likes
    @like = Like.where(user_id: current_user.id)
    if @like.count > 0
      @like.each do |l|
        Like.destroy(l.id)
      end
    end
  end

end
