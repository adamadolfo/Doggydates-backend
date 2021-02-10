class ChangeOwnerIdToRequestorId < ActiveRecord::Migration[6.0]
  def change
    rename_column :matches, :owner_id, :requestor_id
  end
end
