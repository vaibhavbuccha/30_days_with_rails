module CommentsHelper
  def get_comment_username(user_id)
    user = User.find(user_id)
    return user.first_name+' '+user.last_name
  end

  
end
