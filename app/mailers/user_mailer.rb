class UserMailer < ApplicationMailer
	def send_email_notification(user, tv_show)
    @user = user
    @tv_show = tv_show
    mail(to: @user.email, subject: 'Your Favourite show reminder!!')
  end
end
