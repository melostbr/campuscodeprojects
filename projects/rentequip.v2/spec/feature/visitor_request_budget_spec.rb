# frozen_string_literal: true
require 'rails_helper'

feature 'Visitor request budget' do
  scenario 'sucessfully' do
    budget = build(:budget)

    visit root_path

    click_on 'Solicitar orçamento'

    fill_in 'Nome',        with: budget.client_name
    fill_in 'Email',       with: budget.client_email
    fill_in 'Telefone',    with: budget.client_phone
    fill_in 'Descrição',   with: budget.description

    click_on 'Enviar'

    expect(page).to have_css('h1', text: "Orçamento #{budget.id}")
    expect(page).to have_content(budget.client_name)
    expect(page).to have_content(budget.description)
    expect(page).to have_content('Orçamento enviado com sucesso!')
  end

  scenario 'and should fill all fields' do
    visit root_path

    click_on 'Solicitar orçamento'

    click_on 'Enviar'

    expect(page).to have_content('Não foi possível enviar o orçamento,
                                  verifique os erros abaixo.')
  end
end
