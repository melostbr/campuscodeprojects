require 'rails_helper'

feature 'User create a new recipe' do
  scenario 'successfully' do
    world_cuisine = create(:world_cuisine)
    food_type = create(:food_type)
    food_preference = create(:food_preference)

    visit new_recipe_path

    recipe = build(:recipe)

    fill_in 'recipe[name]',             with: recipe.name
    select world_cuisine.name,          from: 'recipe[world_cuisine_id]'
    select food_type.name,              from: 'recipe[food_type_id]'
    select food_preference.name,        from: 'recipe[food_preference_id]'
    fill_in 'recipe[people]',           with: recipe.people
    fill_in 'recipe[preparation_time]', with: recipe.preparation_time
    fill_in 'recipe[dificulty]',        with: recipe.dificulty
    fill_in 'recipe[ingredients]',      with: recipe.ingredients
    fill_in 'recipe[steps]',            with: recipe.steps

    click_on 'Criar Receita'

    expect(page).to have_content(recipe.name)
  end

  scenario 'with photo attached' do
    world_cuisine = create(:world_cuisine)
    food_type = create(:food_type)
    food_preference = create(:food_preference)

    visit new_recipe_path

    recipe = build(:recipe)

    fill_in 'recipe[name]',             with: recipe.name
    select world_cuisine.name,          from: 'recipe[world_cuisine_id]'
    select food_type.name,              from: 'recipe[food_type_id]'
    select food_preference.name,        from: 'recipe[food_preference_id]'
    fill_in 'recipe[ingredients]',      with: recipe.ingredients
    fill_in 'recipe[steps]',            with: recipe.steps
    attach_file('recipe[photo]', 'app/assets/images/torta_limao.jpg')

    click_on 'Criar Receita'

    recipe = Recipe.last

    expect(page).to have_xpath("//img[contains(@src,'#{recipe.photo.url}')]")
  end
end
