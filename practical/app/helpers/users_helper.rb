module UsersHelper
  def total_users
    return User.count
  end
end
