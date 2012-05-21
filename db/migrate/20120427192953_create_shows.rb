class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.date :date
      t.string :venue
      t.string :venue_url
      t.string :city
      t.string :tickets_url
      t.string :details
      t.string :facebook_url

      t.timestamps
    end
  end
end
