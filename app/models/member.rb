class Member < ActiveRecord::Base
  attr_accessible :name, :role, :photo
  has_attached_file :photo, :styles => {
								:thumb=> "100x100#"},
                  :url  => "/assets/members/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/members/:id/:style/:basename.:extension"
end