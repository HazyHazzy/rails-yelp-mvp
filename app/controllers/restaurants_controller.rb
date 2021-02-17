class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(restaurant_params)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  def update
     @restaurant = Restaurant.find(restaurant_params)
     @restaurant.update(restaurant_params)
  end

  def edit
    @restaurant = Restaurant.find(restaurant_params)
  end

  def destroy
     @restaurant = Restaurant.find(restaurant_params)
     @restaurant.destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
