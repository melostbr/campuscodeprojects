require 'rails_helper'

feature 'User create new world cuisine' do
  scenario 'successfully' do
    visit new_world_cuisine_path

    world_cuisine = build(:world_cuisine)

    fill_in 'world_cuisine[name]', with: world_cuisine.name

    click_on 'Criar Cozinha'

    expect(page).to have_content(world_cuisine.name)
  end
end
