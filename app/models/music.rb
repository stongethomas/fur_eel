class Music < ActiveRecord::Base
  attr_accessible :amazon_uk_url, :amazon_url, :cd_baby_url, :itunes_url, :soundcloud_embed, :title, :tracklist, :year, :photo
	
  has_attached_file :photo, :styles => {
								:thumb=> "100x100#",
								:small  => "150x150>",
								:medium => "300x300>",
								:large =>   "400x400>" },
                  :url  => "/assets/musics/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/musics/:id/:style/:basename.:extension"

  end
