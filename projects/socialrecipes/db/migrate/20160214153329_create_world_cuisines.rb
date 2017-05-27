class CreateWorldCuisines < ActiveRecord::Migration
  def change
    create_table :world_cuisines do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
