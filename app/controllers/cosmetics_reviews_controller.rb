class CosmeticsReviewsController < ApplicationController
  before_action :set_cosmetics_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /cosmetics_reviews
  # GET /cosmetics_reviews.json
  def index
    @cosmetics_reviews = CosmeticsReview.all
  end

  # GET /cosmetics_reviews/1
  # GET /cosmetics_reviews/1.json
  def show
    @cosmetics_reviews = CosmeticsReview.order("created_at DESC").limit(6).offset(1)
  end

  # GET /cosmetics_reviews/new
  def new
    @cosmetics_review = CosmeticsReview.new
  end

  # GET /cosmetics_reviews/1/edit
  def edit
  end

  # POST /cosmetics_reviews
  # POST /cosmetics_reviews.json
  def create
    @cosmetics_review = CosmeticsReview.new(cosmetics_review_params)
    @cosmetics_review.user = current_user
    respond_to do |format|
      if @cosmetics_review.save
        format.html { redirect_to @cosmetics_review, notice: 'Cosmetics review was successfully created.' }
        format.json { render :show, status: :created, location: @cosmetics_review }
      else
        format.html { render :new }
        format.json { render json: @cosmetics_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosmetics_reviews/1
  # PATCH/PUT /cosmetics_reviews/1.json
  def update
    respond_to do |format|
      if @cosmetics_review.update(cosmetics_review_params)
        format.html { redirect_to @cosmetics_review, notice: 'Cosmetics review was successfully updated.' }
        format.json { render :show, status: :ok, location: @cosmetics_review }
      else
        format.html { render :edit }
        format.json { render json: @cosmetics_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosmetics_reviews/1
  # DELETE /cosmetics_reviews/1.json
  def destroy
    @cosmetics_review.destroy
    respond_to do |format|
      format.html { redirect_to cosmetics_reviews_url, notice: 'Cosmetics review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def hair
    @cosmetics_reviews = CosmeticsReview.select { |selected_review| selected_review.type_tag == 'Hair' }
  end
  
  def makeup
    @cosmetics_reviews = CosmeticsReview.select { |selected_review| selected_review.type_tag == 'Makeup' }
  end
  
  def bodybath
    @cosmetics_reviews = CosmeticsReview.select { |selected_review| selected_review.type_tag == 'Body and Bath' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmetics_review
      @cosmetics_review = CosmeticsReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cosmetics_review_params
      params.require(:cosmetics_review).permit(:type_tag, :brand, :product_name, :store, :city, :country, :gender, :cosmetics_review_title, :cosmetics_review_body, :user_id, :image, :rating, :price, :quantity, :company_website, :video, :specific_type_tag)
    end
    
    def admin_user
      redirect_to cosmetics_review_path unless current_user.admin?
    end
end
