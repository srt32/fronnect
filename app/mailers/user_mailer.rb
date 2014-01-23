class UserMailer < ActionMailer::Base
  default from: "fronnect@gmail.com"

  def rsvp_confirmation(user, event)
    @user = user
    @event = event
    host = @event.user
    mail(:to => user.email, :cc => host.email, :subject => "RSVP")
  end
end
