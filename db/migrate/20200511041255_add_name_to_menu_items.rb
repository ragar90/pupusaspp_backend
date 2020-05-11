class AddNameToMenuItems < ActiveRecord::Migration[6.0]
  def change
    add_column :menu_items, :name, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
