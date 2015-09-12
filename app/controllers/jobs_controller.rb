# encoding: utf-8
class JobsController < ApplicationController
  load_and_authorize_resource through: :current_user

  def new
    # @job = current_user.jobs.build
  end

  def edit
    # @job = Job.find(params[:id])
  end

  def create
    # @job = current_user.jobs.build(params[:id])
    if @job.save
      redirect_to current_user, notice: 'Job was successfully created.'
    else
      render :new
    end
  end

  def update
    # @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to current_user, notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    # @job = Job.find(params[:id])
    @job.destroy
    redirect_to current_user, notice: 'Job was successfully destroyed.'
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(:position, :description, :started_at, :ended_at)
  end
  
  def request_recommendation
    @job = Job.find(params[:id])
    @job.authentication_token = SecureRandom.hex
    @job.save
    email = params[:email]
    UserMailer.recommendation_request(@job, email).deliver
  end
  
end
