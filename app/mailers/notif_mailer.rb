class NotifMailer < ApplicationMailer
  default from: "flatironapp@gmail.com"

  def sample_email(user)
    @user = user
    @item = Student.find_by(slack_name: user).items.last.name
    mail(to: user, subject: 'Sample Email')
  end
end
