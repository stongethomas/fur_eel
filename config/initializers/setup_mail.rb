ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'smtp.gmail.com',
  :user_name            => 'fureel@fureelmusic.com',
  :password             => '4424649Gm',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }