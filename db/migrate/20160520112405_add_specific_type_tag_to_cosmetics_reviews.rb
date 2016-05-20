class AddSpecificTypeTagToCosmeticsReviews < ActiveRecord::Migration
  def change
    add_column :cosmetics_reviews, :specific_type_tag, :string
  end
end
