# encoding: utf-8
class RecommendationsController < ApplicationController
  
  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def recommendation_params
    params.require(:recommendation).permit(:note, :comment)
  end
  
end
