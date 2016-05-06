class WelcomeController < ApplicationController
  def index
    @users = User.all
  end





  def events
  end

  def shoutout
  end

  def partout
  end

  def videos
  end

  def contact
  end


 def welcome_params
      params.require(:welcome).permit(:user_name)
 end
end
