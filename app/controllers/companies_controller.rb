class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render :index
  end

  def create
    @company = Company.create(
      co_name: params[:co_name],
      co_logo: params[:co_logo],
      co_location: params[:co_location],
      co_description: params[:co_description],
    )
    render :show
  end
end
