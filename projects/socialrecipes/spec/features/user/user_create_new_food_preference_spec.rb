require 'rails_helper'

feature 'User create new food preference' do
  scenario 'successfully' do
    visit new_food_preference_path

    food_preference = build(:food_preference)

    fill_in 'food_preference[name]', with: food_preference.name

    click_on 'Criar Preferencia'

    expect(page).to have_content(food_preference.name)
  end
end
