class UserNotifier < ApplicationMailer
	 default :from => 'drummondfamilytree@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    @url  = 'Drummondfamilytree.com'
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our Drummondfamilytree.com!' )
  end
end

