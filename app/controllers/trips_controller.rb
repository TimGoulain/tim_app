class TripsController < ApplicationController

  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if @trip.save
      redirect_to trips_path, notice: 'Your travel offer was successfully added to the list!'
    else
      render :new
    end
  end

  def update
    if @trip.update(trip_params)
      redirect_to trips_path, notice: 'Your travel offer was successfully updated.'
    else
      render :edit
    end
  end
    
  def destroy
    @trip.destroy
    redirect_to trips_path, notice: 'Your trip offer was successfully deleted to the list!'
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :departure_point, :arrival_point, :started_at, :ended_at, :flexible_date, :cotraveller, :user_id, :phone)
  end
  end
