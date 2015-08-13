# encoding: utf-8
class JobsController < ApplicationController
  
  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = current_user.jobs.build(job_params) 
    
    respond_to do |format|
      if @job.save
        format.html { redirect_to current_user, notice: 'Job was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to current_user, notice: 'Job was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @job = Job.find(params[:id])
    
    @job.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Job was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:position, :description, :location, :started_at, :ended_at)
    end
end
