# encoding: utf-8
class OpinionsController < ApplicationController

  load_and_authorize_resource :travel
  load_and_authorize_resource :opinion, through: :travel
  
  def new
  end 
  
  def show
  end
  
  def edit
  end

  def create
    # @opinion = @travel.opinions.build(opinion_params)
    if @opinion.save
      UserMailer.opinion_request(@opinion).deliver
      redirect_to user_path(current_user), notice: 'Your recommendation request was successfully sent.'
    else
      render :new
    end
  end

  def update
    if params[:token] == @opinion.token
      @opinion.save
      redirect_to root_path, notice: 'The recommendation was successfully posted'
    else
      redirect_to root_path, notice: 'You cannot post a recommendation this way!'
    end 
  end

  def destroy
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def opinion_params
    params.require(:opinion).permit(:note, :comment, :recipient_email, :travel_id)
  end
  
end
