require 'rails_helper'

feature 'User lists recipes' do
  scenario 'successfully' do
    recipes = create_list(:recipe, 6)

    visit recipes_path

    recipes.each do |recipe|
      expect(page).to have_content(recipe.name)
    end
  end
end
