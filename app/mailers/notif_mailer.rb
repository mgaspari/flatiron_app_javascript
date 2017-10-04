class NotifMailer < ApplicationMailer
  default from: "flatironapp@gmail.com"

  def sample_email(user, item)
    @user = user
    @item = item
    mail(to: user, subject: "Your #{item.name} needs to be removed")
  end
end
