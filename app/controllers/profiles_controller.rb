class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :only_current_user, only: [:edit, :update, :destroy]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  
  def new
    # form where a user can fill out their own profile.
    @profile = Profile.new
  end
  
  def show
  end
  
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = session["warden.user.user.key"][1][0]

    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, notice: 'Your profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit
    unless current_user.profile.blank?
      @profile = current_user.profile
    else
      flash[:notice] = "No profile exists for current user"
      redirect_to root_path
    end 
  end
  
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Your profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :image, :country, :city, :description, :contact_email)
    end
    
    def set_profile
      @profile = Profile.find(params[:user_id])
    end
    
    def only_current_user
      @user = User.find( params[:user_id] )
      redirect_to(root_url) unless @user == current_user
    end
    
end