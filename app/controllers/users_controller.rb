# encoding: utf-8
class UsersController < ApplicationController
  
  load_and_authorize_resource

  def index
  end

  def show
  end

  def edit
  end
  
  def new
  end
    
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Your profile was updated successfully.'
    else
      render :edit
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(
      :name, :email, :country, :birth, :phone, :driving_licence, :linkedin_url,
      :current_location, :headline, :about_me, :skills
    )
  end
end
