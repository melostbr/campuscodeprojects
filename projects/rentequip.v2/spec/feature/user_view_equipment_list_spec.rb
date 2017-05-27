# frozen_string_literal: true
require 'rails_helper'

feature 'User view equipment list' do
  scenario 'successfully' do
    equipment = create(:equipment)
    equipment2 = create(:equipment)

    visit equipment_index_path

    expect(page).to have_link("#{equipment.name} #{equipment.serial_number}")
    expect(page).to have_content(equipment.status)

    expect(page).to have_link("#{equipment2.name} #{equipment2.serial_number}")
  end

  scenario "can't see any equipment" do
    visit equipment_index_path

    expect(page).to have_content('Não existem equipamentos cadastrados.')
  end
end
