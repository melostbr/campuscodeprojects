class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :world_cuisine
      t.string :food_type
      t.string :food_preference
      t.integer :people
      t.integer :preparation_time
      t.string :dificulty
      t.string :ingredients
      t.string :steps

      t.timestamps null: false
    end
  end
end
