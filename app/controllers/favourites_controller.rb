class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end
  def create
    @favourite = Favourite.new
    @car = Car.find(params[:car_id])
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car) # redirect to favourites?
    else
      render "car/show", status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end
end
