class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :email
      t.string :city
      t.string :country
      t.string :state
      t.string :ref

      t.timestamps
    end
  end
end
