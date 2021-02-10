class RenameMultipleColumnNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :matches, :requestor_id, :owner_id 
    rename_column :matches, :receiver_id, :friend_id 
  end
end
