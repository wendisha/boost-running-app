module UsersHelper
  
  def display_welcome_message
    if @user == current_user 
      tag.h2("Welcome, #{@user.username.capitalize}!", :class => "welcome-message")
    else
      tag.h2("Runner: #{@user.username.capitalize}", :class => "welcome-message")
    end
  end

end
