class Picture < ActiveRecord::Base
  attr_accessible :tag, :photo, :caption

  has_attached_file :photo, :styles => {
								:thumb=> "100x100#",
								:small  => "150x150>",
								:medium => "300x300>",
								:large =>   "600x600>"},
                  :url  => "/assets/pictures/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension"

  
  scope :recent_photos, order("created_at desc").limit(5)
  
  end