class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new(favourite_params)
    @car = Car.find(params[:id])
    @favourite.car = @car

    if @favourite.save
      redirect_to car_path(@car)
    else
      render "car/show", status: :unprocessable_entity
    end
  end
end

private

def favourite_params
  params.require(:favourite).permit(:car_id)
end
