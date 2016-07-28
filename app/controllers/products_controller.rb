class ProductsController < ApplicationController
  
  def show

  end

  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

    def product_params
      params.require(:product).permit(:name, :store, :city, :country, :gender, :website, :image, :price, :quantity)
    end

end