class ChangeUsersRoleToAdmin < ActiveRecord::Migration[6.1]
  def change
        rename_column :users, :role, :admin
  end
end
