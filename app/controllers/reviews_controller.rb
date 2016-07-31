class ReviewsController < ApplicationController
  before_action :set_category_and_product, only: [:new, :create, :edit, :update]
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
    @featured_reviews = Review.all.shuffle.take(5)
  end

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Product.find(params[:product_id]).reviews.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to category_product_review_path(@category, @product, @review), notice: 'Review was created successfully.'
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to category_product_review_path(@category, @product, @review), notice: 'Review was updated successfully.'
    else
      render :new
    end
  end

  def destroy
    @review.destroy
    redirect_to category_product_path(@review.product.category, @review.product), notice: 'Review was destroyed successfully.'
  end

  private

    def set_category_and_product
      @category = Category.find(params[:category_id])
      @product = Product.find(params[:product_id])
    end

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:title, :body, :rating, :image, :video)
    end
    
end
