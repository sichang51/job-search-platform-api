class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.create(
      user_name: params[:user_name],
      user_email: params[:user_email],
      user_phn_num: params[:user_phn_num],
      user_bio: params[:user_bio],
      user_linkedin_url: params[:user_linkedin_url],
      user_twitter_handle: params[:user_twitter_handle],
      user_website_url: params[:user_website_url],
      user_resume_url: params[:user_resume_url],
      user_github_url: params[:user_github_url],
      user_photo_url: params[:user_photo_url],
    )
    render :show
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      user_name: params[:user_name] || @user.user_name,
      user_email: params[:user_email] || @user.user_email,
      user_phn_num: params[:user_phn_num] || @user.user_phn_num,
      user_bio: params[:user_bio] || @user.user_bio,
      user_linkedin_url: params[:user_linkedin_url] || @user.user_linkedin_url,
      user_twitter_handle: params[:user_twitter_handle] || @user.user_twitter_handle,
      user_website_url: params[:user_website_url] || @user.user_website_url,
      user_resume_url: params[:user_resume_url] || @user.user_resume_url,
      user_github_url: params[:user_github_url] || @user.user_github_url,
      user_photo_url: params[:user_photo_url] || @user.user_photo_url,
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User destroyed successfuly" }
  end
end
