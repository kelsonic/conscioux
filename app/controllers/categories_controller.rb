class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  
  def show
    @products = Product.where('category_id = ?', @category.id)
  end

  def index
    @categories = Category.all
  end

  def new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redrect_to @category, notice: 'Category was created successfully.'
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to @category, notice: 'Category was updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'Category was destroyed successfully.'
  end



  private

    def require_admin
      unless current_user.is_admin?
        redirect_to root_path, flash: {error: 'You are not authorized to meddle with the categories.'}
      end
    end

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end