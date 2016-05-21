class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :city
      t.string :contact_email
      t.string :description
      t.string :image
      
      t.timestamps
    end
  end
end