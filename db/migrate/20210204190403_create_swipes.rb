class CreateSwipes < ActiveRecord::Migration[6.0]
  def change
    create_table :swipes do |t|
      t.integer :swiping_owner_id
      t.integer :feed_member_id

      t.timestamps
    end
  end
end
