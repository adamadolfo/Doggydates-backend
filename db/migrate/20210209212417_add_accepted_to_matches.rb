class AddAcceptedToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :accepted, :boolean, default: false
  end
end
