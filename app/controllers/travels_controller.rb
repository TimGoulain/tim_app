# encoding: utf-8
class TravelsController < ApplicationController
  load_and_authorize_resource through: :current_user
  
  def index
  end

  def show
  end

  def new
    @travel = Travel.new
  end

  def edit
  end

  def create
    if @travel.save
      redirect_to current_user, notice: 'Your travel was successfully created.'
    else 
      render :new
    end
  end
  
  def update
    if @travel.update(travel_params)
      redirect_to current_user, notice: 'Your travek was successfully updated.'
    else
      render :edit
    end
  end
    
  def destroy
    @travel.destroy
    redirect_to current_user, notice: 'Your travel was successfully deleted to the list!'
  end

  private

  def travel_params
    params.require(:travel).permit(
      :visit, :departure_point, :arrival_point, :started_at, :ended_at, :cotraveller, :memory,
      opinion_attributes: [
        :note, :comment
      ]
    )
  end
  
  def opinion_params
    params[:travel][:opinion_attributes]
  end
    
end
