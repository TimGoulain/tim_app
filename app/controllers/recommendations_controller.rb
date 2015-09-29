# encoding: utf-8
class RecommendationsController < ApplicationController

  load_and_authorize_resource :job
  load_and_authorize_resource :recommendation, through: :job
  
  def new
  end 
  
  def show
  end
  
  def edit
  end

  def create
    # @recommendation = @job.recommendations.build(recommendation_params)
    if @recommendation.save
      UserMailer.recommendation_request(@recommendation).deliver
      redirect_to user_path(current_user), notice: 'Your recommendation request was successfully sent.'
    else
      render :new
    end
  end

  def update
    if params[:token] == @recommendation.token
      @recommendation.save
      redirect_to root_path, notice: 'The recommendation was successfully posted'
    else
      redirect_to root_path, notice: 'You cannot post a recommendation this way!'
    end 
  end

  def destroy
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def recommendation_params
    params.require(:recommendation).permit(:note, :comment, :recipient_email, :job_id)
  end
  
end
