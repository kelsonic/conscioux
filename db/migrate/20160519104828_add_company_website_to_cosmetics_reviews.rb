class AddCompanyWebsiteToCosmeticsReviews < ActiveRecord::Migration
  def change
    add_column :cosmetics_reviews, :company_website, :string
  end
end
