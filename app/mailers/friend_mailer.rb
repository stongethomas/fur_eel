class FriendMailer < ActionMailer::Base
  default 	:from => 'fureel@fureelmusic.com',
			:return_path => 'fureel@fureelmusic.com',
			:sender => 'fureel@fureelmusic.com'
				
  def reference(friend)
    @friend = friend
	@url = "http://www.fureelmusic.com"
    mail(:to => @friend.email, :subject => "Download Fur Eel's album for free")
  end
end
