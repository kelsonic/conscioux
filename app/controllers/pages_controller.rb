class PagesController < ApplicationController
  
  def home
    @reviews = Review.order("created_at DESC").limit(3)
    @posts = Post.order("created_at DESC").limit(3)
    @featured_post = @posts.first
    @featured_review = @reviews.first
  end
  
  def about
  end

end
