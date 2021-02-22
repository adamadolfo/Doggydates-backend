class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :conversation, index: true
      t.references :owner, index: true
      t.boolean :read, :default => false
    end
  end
end
