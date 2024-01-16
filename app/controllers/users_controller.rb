class UsersController < ApplicationController
  require "cloudinary"

  def index
    @users = User.all
    render :index
  end

  def create
    user = User.new(
      user_name: params[:user_name],
      user_email: params[:user_email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    # @user = User.find_by(id: params[:id])
    render :show
  end

  def show_current_user
    @user = current_user
    render :show
  end

  def update
    Rails.logger.debug("Received params: #{params.inspect}")
    user_photo_url = params[:user_photo_url]

    if params[:image_file]
      response = Cloudinary::Uploader.upload(params["image_file"], resource_type: :auto)
      user_photo_url = response["secure_url"]
    end

    @user = User.find_by(id: params[:id])
    @user.update(
      user_name: params[:user_name] || @user.user_name,
      user_fname: params[:user_fname] || @user.user_fname,
      user_lname: params[:user_lname] || @user.user_lname,
      user_email: params[:user_email] || @user.user_email,
      user_phn_num: params[:user_phn_num] || @user.user_phn_num,
      user_bio: params[:user_bio] || @user.user_bio,
      user_linkedin_url: params[:user_linkedin_url] || @user.user_linkedin_url,
      user_twitter_handle: params[:user_twitter_handle] || @user.user_twitter_handle,
      user_website_url: params[:user_website_url] || @user.user_website_url,
      user_resume_url: params[:user_resume_url] || @user.user_resume_url,
      user_github_url: params[:user_github_url] || @user.user_github_url,
      # user_photo_url: params[:user_photo_url] || @user.user_photo_url,
      user_photo_url: user_photo_url || @user.user_photo_url,
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User destroyed successfuly" }
  end

  def saved_jobs
    @user = User.find(params[:id])
    @saved_jobs = @user.saved_jobs # Assuming you have a relationship set up

    render json: @saved_jobs
  end
end
