class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :gets_along_with
      t.string :temperement
      t.integer :great_date
      t.string :dominate_submissive
      t.string :leash
      t.string :one_on_one_group
      t.string :enjoys
      t.string :dislikes
      t.string :adopted_breeder
      t.string :img_url
      t.integer :owner_id

      t.timestamps
    end
  end
end
