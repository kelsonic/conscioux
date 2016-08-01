class PagesController < ApplicationController
  
  def home
    @reviews = Review.order("created_at DESC").limit(3)
    @posts = Post.order("created_at DESC").limit(3)
    @featured_post = @posts.last
    @featured_review = @reviews.last
  end
  
  def about
  end

  def request_review
  end

end
