class AddPriceToCosmeticsReviews < ActiveRecord::Migration
  def change
    add_column :cosmetics_reviews, :price, :integer
  end
end
