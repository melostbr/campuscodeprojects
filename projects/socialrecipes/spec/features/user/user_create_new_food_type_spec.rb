require 'rails_helper'

feature 'User create new food type' do
  scenario 'successfully' do
    visit new_food_type_path

    food_type = build(:food_type)

    fill_in 'food_type[name]', with: food_type.name

    click_on 'Criar Tipo'

    expect(page).to have_content(food_type.name)
  end
end
