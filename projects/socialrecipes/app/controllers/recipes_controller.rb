class RecipesController < ApplicationController
  before_action :set_collections, only: [:new, :create, :show, :index]

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  private

  def set_collections
    @world_cuisines = WorldCuisine.all
    @food_types = FoodType.all
    @food_preferences = FoodPreference.all
  end

  def recipe_params
    params.require(:recipe)
          .permit(:name, :world_cuisine_id, :food_type_id,
                  :food_preference_id, :people, :preparation_time,
                  :dificulty, :ingredients, :steps, :photo)
  end
end
