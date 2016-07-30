class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def index
    @reviews = Review.all
  end

  def new
  end

  def edit
  end

  def create
    @user = current_user
    @review = @user.reviews.new(review_params)

    if @review.save
      redirect_to @review, notice: 'Review was created successfully.'
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to @review, notice: 'Review was updated successfully.'
    else
      render :new
    end
  end

  def destroy
    @review.destroy
    redirect_to reviews_path, notice: 'Review was destroyed successfully.'
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:title, :body, :rating, :image, :video)
    end
    
end
