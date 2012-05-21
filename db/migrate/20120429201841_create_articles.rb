class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :date
      t.string :city
      t.string :title
      t.string :source
      t.string :url

      t.timestamps
    end
  end
end
