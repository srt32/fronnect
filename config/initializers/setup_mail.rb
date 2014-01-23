ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "fronnect.herokuapp.com",
  :user_name            => "fronnect",
  :password             => "cornell&duke",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
