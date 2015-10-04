# encoding: utf-8
class EmployersController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def new
  end

  def edit
  end

  def create
    if @employer.save
      redirect_to offers_path, notice: 'Employer was successfully added.'
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def employer_params
    params.require(:employer).permit(:name, :location, :city, :contact_point)
  end
end
