class Fan < ActiveRecord::Base
  attr_accessible :city, :country, :email, :ref, :state
  
  validates :city,  presence: true, length: { maximum: 20 }
  validates :state, presence: true
  validates :country, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  MULTI_EMAIL_REGEX = /(,{0,1}[a-zA-Z_]+[^.]*\.[a-zA-Z]{2,6})+/i
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }



validates_format_of :ref, :with => MULTI_EMAIL_REGEX,:unless => lambda { self.ref.blank? }

end
