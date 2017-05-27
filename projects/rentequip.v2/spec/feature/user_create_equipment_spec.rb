# frozen_string_literal: true
require 'rails_helper'

feature 'User create equipment' do
  scenario 'successfully' do
    equipment = build(:equipment, equipment.value = '100,00')
    visit new_equipment_path

    fill_in 'Código', with: equipment.code
    fill_in 'Nome', with: equipment.name
    fill_in 'Número de Série', with: equipment.serial_number
    fill_in 'Fornecedor', with: equipment.supplier
    fill_in 'Categoria', with: equipment.category
    fill_in 'Valor', with: equipment.value
    fill_in 'Status', with: equipment.status

    click_on 'Salvar'

    expect(page).to have_css('h1', text:
                             "#{equipment.name} #{equipment.serial_number}")
    expect(page).to have_content("R$ 100,00")
    expect(page).to have_content(equipment.status)
  end

  scenario 'and should fill all fields' do
    visit root_path

    visit new_equipment_path

    click_on 'Salvar'

    expect(page).to have_content('Não foi possível criar o equipamento,
                                  verifique os erros abaixo.')
  end
end
