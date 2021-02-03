class RenameMatchUserIdToOwnerId < ActiveRecord::Migration[6.0]
  def change
    rename_column :matches, :user_id, :owner_id
  end
end
