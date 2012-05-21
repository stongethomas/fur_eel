class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.string :year
      t.string :tracklist
      t.string :amazon_url
      t.string :itunes_url
      t.string :amazon_uk_url
      t.string :cd_baby_url
      t.string :soundcloud_embed

      t.timestamps
    end
  end
end
