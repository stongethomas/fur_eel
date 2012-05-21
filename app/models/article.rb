class Article < ActiveRecord::Base
  attr_accessible :city, :date, :source, :title, :url, :pdf
  has_attached_file :pdf,
                  :url  => "/assets/articles/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/articles/:id/:style/:basename.:extension"
end