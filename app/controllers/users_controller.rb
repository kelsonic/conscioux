class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @lifestyle_posts = @user.lifestyle_posts
  end

end