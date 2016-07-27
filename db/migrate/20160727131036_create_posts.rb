class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user

      t.string :topic
      t.string :city
      t.string :country
      t.string :title
      t.string :body
      t.string :takeaways
      t.string :interviewed_people
      t.string :image
      t.string :video

      t.timestamps null: false
    end
  end
end
