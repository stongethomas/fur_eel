class Show < ActiveRecord::Base
  attr_accessible :city, :date, :details, :facebook_url, :tickets_url, :venue, :venue_url, :photo

  has_attached_file :photo, :styles => {
								:thumb=> "100x100#",
								:poster => "700x700>"},
                  :url  => "/assets/shows/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/shows/:id/:style/:basename.:extension"

  
  end
