class AddWorldCuisineToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :world_cuisine, index: true, foreign_key: true
  end
end
