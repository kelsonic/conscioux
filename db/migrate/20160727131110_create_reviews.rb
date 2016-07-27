class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id

      t.string :title
      t.string :body
      t.float :rating
      t.string :image
      t.string :video

      t.timestamps null: false
    end
  end
end
