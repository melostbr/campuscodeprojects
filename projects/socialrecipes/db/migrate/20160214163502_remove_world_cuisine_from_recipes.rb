class RemoveWorldCuisineFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :world_cuisine, :string
  end
end
