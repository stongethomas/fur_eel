class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :paypal_view_cart
      t.string :facebook
      t.string :instagram
      t.string :twitter
      t.string :band_name
      t.string :tumblr
      t.string :bio
      t.string :epk

      t.timestamps
    end
  end
end
