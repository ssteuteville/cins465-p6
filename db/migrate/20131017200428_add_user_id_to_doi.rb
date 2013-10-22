class AddUserIdToDoi < ActiveRecord::Migration
  def change
    add_column :dois, :user_id, :integer
  end
end
