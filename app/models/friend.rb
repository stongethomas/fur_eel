class Friend < ActiveRecord::Base
  attr_accessible :email
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  MULTI_EMAIL_REGEX = /(,{0,1}[a-zA-Z_]+[^.]*\.[a-zA-Z]{2,6})+/i
 validates :email, presence: true, format: { with: MULTI_EMAIL_REGEX }


end
