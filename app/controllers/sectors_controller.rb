# encoding: utf-8
class SectorsController < ApplicationController
  load_and_authorize_resource

  def new
    # @sector = current_user.sectors.build
  end

  def edit
    # @sector = Sector.find(params[:id])
  end

  def create
    # @job = current_user.jobs.build(params[:id])
    if @sector.save
      redirect_to sectors_path, notice: 'Sector was successfully created.'
    else
      render :new
    end
  end

  def update
  if @sector.update(sector_params)
      redirect_to sectors_path, notice: 'Sector was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    # @job = Job.find(params[:id])
    @sector.destroy
    redirect_to sectors_path, notice: 'Sector was successfully destroyed.'
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def sector_params
    params.require(:sector).permit(:code, :image)
  end
end
