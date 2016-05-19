class AddQuantityToCosmeticsReviews < ActiveRecord::Migration
  def change
    add_column :cosmetics_reviews, :quantity, :string
  end
end
