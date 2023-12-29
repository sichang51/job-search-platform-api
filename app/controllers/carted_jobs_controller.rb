class CartedJobsController < ApplicationController
  def index
    @carted_jobs = current_user.carted_jobs.where(status: "carted")
    render :index
  end

  def create
    @carted_job = CartedJob.create(
      user_id: current_user.id,
      company_id: params[:company_id],
      status: "carted",
      job_id: nil,
    )

    if @carted_job.valid?
      render :show
    else
      render json: { errors: @carted_job.errors.full_messages }, status: 422
    end
  end

  def destroy
    carted_job = current_user.carted_jobs.find_by(id: params[:id], status: "carted")
    carted_job.update(status: "removed")
    render json: { status: "Carted item removed" }
  end
end
