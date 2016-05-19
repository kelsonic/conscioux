class AddVideoToCosmeticsReviews < ActiveRecord::Migration
  def change
    add_column :cosmetics_reviews, :video, :string
  end
end
