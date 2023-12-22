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

  def show
    @job = Job.find_by(id: params[:id])
    render :show
  end

  def update
    @job = Job.find_by(id: params[:id])
    @job.update(
      company_id: params[:company_id] || @job.company_id,
      job_title: params[:job_title] || @job.job_title,
      job_description: params[:job_description] || @job.job_description,
      job_url: params[:job_url] || @job.job_url,
      job_type: params[:job_type] || @job.job_type,
      job_yrs_exp: params[:job_yrs_exp] || @job.job_yrs_exp,
      job_location: params[:job_location] || @job.job_location,
      job_salary_range: params[:job_salary_range] || @job.job_salary_range,
    )
    render :show
  end
end
