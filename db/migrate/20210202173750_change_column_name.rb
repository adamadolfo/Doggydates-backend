class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :dogs, :temperement, :temperament
  end
end
