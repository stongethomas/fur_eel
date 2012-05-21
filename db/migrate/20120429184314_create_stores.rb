class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :desc
      t.string :item_code
      t.string :tag
      t.float :price

      t.timestamps
    end
  end
end
