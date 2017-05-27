require 'rails_helper'

feature 'User see recipe detail' do
  scenario 'successfully' do
    create_list(:recipe, 6)

    visit recipes_path

    recipe = Recipe.last

    click_on recipe.name

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.world_cuisine.name)
    expect(page).to have_content(recipe.food_type.name)
    expect(page).to have_content(recipe.food_preference.name)
    expect(page).to have_content(recipe.people)
    expect(page).to have_content(recipe.preparation_time)
    expect(page).to have_content(recipe.dificulty)
    expect(page).to have_content(recipe.ingredients)
    expect(page).to have_content(recipe.steps)
    expect(page).to have_xpath("//img[contains(@src,'#{recipe.photo.url}')]")
  end

  scenario 'and is in the right path' do
    recipes = create_list(:recipe, 6)

    visit recipes_path

    recipes.each do |recipe|
      expect(page).to have_content(recipe.name)
    end

    recipe = Recipe.last

    click_on recipe.name

    expect(page).to have_current_path(recipe_path(recipe))
  end
end
