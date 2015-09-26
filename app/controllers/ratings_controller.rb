# encoding: utf-8
class RatingsController < ApplicationController

  load_and_authorize_resource :recommendation
  load_and_authorize_resource :rating, through: :recommendation
  
 def update
    @rating = Rating.find(params[:id])
    @recommendation = @rating.recommendation
    if @rating.update_attributes(score: params[:score])
      respond_to do |format|
        format.js
      end
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  
end
