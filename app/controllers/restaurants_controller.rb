class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    # display all of my restaurants

    @restaurants = Restaurant.all
  end

  def show
    # display specific restaurant

    # @restaurant = Restaurant.find(params[:id])
  end


  # create new restaurant

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save!

    redirect_to restaurant_path(@restaurant)
  end

  # update specific restaurant

  def edit
    #@restaurant = Restaurant.find(params[:id])
  end

  def update
    #@restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    @restaurant.save!

    redirect_to restaurant_path(@restaurant)
  end

  # destroy specific restaurant

  def destroy
    #@restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
