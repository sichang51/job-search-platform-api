class CartedJobsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @carted_job = current_user.carted_jobs
    render :index
  end

  def create
    @carted_job = CartedJob.find_by(
      user_id: current_user.id,
      company_id: params[:company_id],
      job_id: params[:job_id],
    )

    if !@carted_job
      @carted_job = CartedJob.create(
        user_id: current_user.id,
        company_id: params[:company_id],
        job_id: params[:job_id],
      )
    end

    if @carted_job.valid?
      render :show
    else
      render json: { errors: @carted_job.errors.full_messages }, status: 422
    end
  end

  def destroy
    carted_job = current_user.carted_jobs.find_by(id: params[:id])
    carted_job.delete
    render json: { status: "Carted item removed" }
  end
end
