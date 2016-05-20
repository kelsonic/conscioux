class CreateLifestylePosts < ActiveRecord::Migration
  def change
    create_table :lifestyle_posts do |t|
      t.string :topic
      t.string :city
      t.string :country
      t.string :title
      t.string :body
      t.string :takeaways
      t.string :people
      t.string :image
      t.string :video
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
