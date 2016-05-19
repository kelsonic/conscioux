class PagesController < ApplicationController
  
  def home
    @cosmetics_reviews = CosmeticsReview.order("created_at DESC").limit(6).offset(1)
  end
  
  def about
  end 
  
  def choose
  end
  
  def search
    @cosmetics_reviews = CosmeticsReview.search(params[:search_cosmetics]).order("created_at DESC")
  end

end
