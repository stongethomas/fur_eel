

class Store < ActiveRecord::Base



  attr_accessible :desc, :item_code, :name, :price, :tag, :photo
  has_attached_file :photo, :styles => {
								:thumb=> "100x100#",
								:medium => "300x300>",
								:large =>   "400x400>"},
                  :url  => "/assets/stores/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/stores/:id/:style/:basename.:extension"
end
