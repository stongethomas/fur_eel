class FanObserver < ActiveRecord::Observer
  def after_create(fan)
    FanMailer.deliver_welcome_email(fan)
  end
end