class PagesController < ApplicationController
  
  def home
    @cosmetics_reviews = CosmeticsReview.order("created_at DESC").limit(3)
    @lifestyle_posts = LifestylePost.all
    @lifestyle_post = LifestylePost.last
  end
  
  def about
  end 
  
  def choose
  end
  
  def search
    @cosmetics_reviews = CosmeticsReview.search(params[:search_cosmetics]).order("created_at DESC")
  end
  
  def request_review
  end

end
