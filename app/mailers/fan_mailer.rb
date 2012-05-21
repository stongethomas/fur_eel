class FanMailer < ActionMailer::Base
  default 	:from => 'fureel@fureelmusic.com',
			:return_path => 'fureel@fureelmusic.com',
			:sender => 'fureel@fureelmusic.com'
				
  def welcome_email(fan)
    @fan = fan
	@url = "http://www.fureelmusic.com"
    mail(:to => @fan.email, :subject => "Welcome to the Fur Eel Mailing List")
  end
end
