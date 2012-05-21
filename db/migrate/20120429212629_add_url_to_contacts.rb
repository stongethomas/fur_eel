class AddUrlToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :url, :string
  end
end
