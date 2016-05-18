class AddImageToCosmeticsReviews < ActiveRecord::Migration
  def change
    add_column :cosmetics_reviews, :image, :string
  end
end
