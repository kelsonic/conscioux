class PagesController < ApplicationController
  
  def home
    @cosmetics_reviews = CosmeticsReview.order("created_at DESC").limit(6).offset(1)
  end
  
  def about
  end 

end
