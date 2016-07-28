class PostsController < ApplicationController
  
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def index
    @posts = Post.all
  end

  def new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was created successfully.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post was destroyed successfully.'
  end

  private

    def require_admin
      unless current_user.is_admin?
        redirect_to root_path, flash: {error: 'You are not authorized to meddle with the categories.'}
      end
    end

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:topic, :city, :country, :title, :body, :takeaways, :interviewed_people, :image, :video)
    end

end