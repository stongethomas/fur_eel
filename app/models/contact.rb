class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :title, :photo, :url
  has_attached_file :photo, :styles => {
								:thumb=> "100x100#",
								:medium => "300x300>"},
                  :url  => "/assets/contacts/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/contacts/:id/:style/:basename.:extension"
end