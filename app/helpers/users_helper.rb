module UsersHelper
  
  def display_welcome_message
    if @user == current_user 
      tag.h2("Welcome, #{@user.username.capitalize}!")
    else
      tag.h2("Run History: #{@user.username.capitalize}")
    end
  end

end
