class Band < ActiveRecord::Base
  attr_accessible :band_name, :bio, :epk, :facebook, :instagram, :paypal_view_cart, :tumblr, :twitter
end
