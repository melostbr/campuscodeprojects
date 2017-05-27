class WorldCuisinesController < ApplicationController
  def new
    @world_cuisine = WorldCuisine.new
  end

  def create
    @world_cuisine = WorldCuisine.new(world_cuisine_params)
    if @world_cuisine.save
      redirect_to @world_cuisine
    else
      render :new
    end
  end

  def show
    @world_cuisine = WorldCuisine.find(params[:id])
  end

  private

  def world_cuisine_params
    params.require(:world_cuisine).permit(:name)
  end
end
