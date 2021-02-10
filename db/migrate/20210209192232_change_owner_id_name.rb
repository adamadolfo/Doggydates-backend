class ChangeOwnerIdName < ActiveRecord::Migration[6.0]
  def change
    rename_column :matches, :owner_id, :requestor_id
    rename_column :matches, :friend_id, :receiver_id
  end
end
