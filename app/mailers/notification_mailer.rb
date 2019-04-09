class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    mail(to: "drewmyerssss@gmail.com",
      subject: "A comment has been added to your place")
  end
end
