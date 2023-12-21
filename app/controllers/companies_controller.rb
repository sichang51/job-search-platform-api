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

  def show
    @company = Company.find_by(id: params[:id])
    render :show
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.update(
      co_name: params[:co_name] || @company.co_name,
      co_logo: params[:co_logo] || @company.co_logo,
      co_location: params[:co_location] || @company.co_location,
      co_description: params[:co_description] || @company.co_description,
    )
    render :show
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    render json: { message: "Company destroyed successfully" }
  end
end
