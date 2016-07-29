class ProfilesController < ApplicationController
  
  
  
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

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :country, :city, :country, :bio, :image)
    end

end