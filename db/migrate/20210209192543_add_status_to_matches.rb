class AddStatusToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :status, :string
  end
end
