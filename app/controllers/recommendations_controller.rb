# encoding: utf-8
class RecommendationsController < ApplicationController
  
  def new
    @recommendation = Recommendation.new(params[:recommendation])
  end

  def edit
  end

  def create
    if @recommendation.save
      redirect_to current_user, notice: 'Your recommendation request was successfully sent.'
    else
      render :new
    end
  end

  def update
    @recommendation.update
    if params[:token] == recommendation.token
      @recommendation.save
      redirect_to user_path(@user), notice: 'The recommendation was successfully posted'
    else
      redirect_to user_path(@user), notice: 'You cannot post a recommendation this way!'
    end 
  end

  def destroy
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def recommendation_params
    params.require(:recommendation).permit(:note, :comment, :recipient_email, :authentication_token, :job_id)
  end
  
end
