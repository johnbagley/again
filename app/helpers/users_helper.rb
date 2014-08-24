module UsersHelper
  def button_to_follow(user)
    button_to 'Follow', user_follow_path(user)
  end
end
