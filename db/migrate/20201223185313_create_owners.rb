class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :age_preference
      t.string :friendship_type
      t.string :owner_exp
      t.string :gender_preference
      t.string :looking_for
      t.string :city
      t.string :state
      t.string :willing_mile_radius
      t.string :image_url

      t.timestamps
    end
  end
end
