# encoding: utf-8
class JobsController < ApplicationController

  load_and_authorize_resource through: :current_user

  def show
  end

  def new
    @job.build_employer
  end

  def edit
    # @job = Job.find(params[:id])
    @job.build_employer unless @job.employer
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
    params.require(:job).permit(
      :position, :description, :started_at, :ended_at, :employer_id, :sector_id,
      employer_attributes: [
        :id, :name, :location, :city
      ],
      recommendation_attributes: [
        :note, :comment
      ]
    )
  end
  
  def employer_params
    params[:job][:employer_attributes]
  end  
  
  def opinion_params
    params[:job][:recommendation_attributes]
  end
end
