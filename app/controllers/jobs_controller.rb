class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render :index
  end

  def create
    @job = Job.create(
      job_title: params[:job_title],
      job_description: params[:job_description],
      job_url: params[:job_url],
      job_type: params[:job_type],
      job_yrs_exp: params[:job_yrs_exp],
      job_location: params[:job_location],
      job_salary_range: params[:job_salary_range],
    )
    render :show
  end
end
