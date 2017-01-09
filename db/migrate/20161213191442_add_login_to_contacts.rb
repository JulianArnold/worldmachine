class AddLoginToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :login, :string
  end
end
