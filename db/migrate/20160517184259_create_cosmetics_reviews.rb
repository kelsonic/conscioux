class CreateCosmeticsReviews < ActiveRecord::Migration
  def change
    create_table :cosmetics_reviews do |t|
      t.string :type_tag
      t.string :brand
      t.string :product_name
      t.string :store
      t.string :city
      t.string :country
      t.string :gender
      t.string :cosmetics_review_title
      t.string :cosmetics_review_body
      t.integer :cosmetics_rating
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
