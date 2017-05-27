# frozen_string_literal: true
require 'rails_helper'

feature 'User view budgets list' do
  scenario 'successfully' do
    budget = create(:budget)
    another_budget = create(:budget)

    visit budgets_path

    expect(page).to have_css('h1', text: "Orçamento #{budget.id}")
    expect(page).to have_content(budget.description)

    expect(page).to have_css('h1', text: "Orçamento #{another_budget.id}")
    expect(page).to have_content(another_budget.description)
  end

  scenario 'and click to see details' do
    budget = create(:budget)

    visit budgets_path

    click_on budget.id

    expect(page).to have_content(budget.client_name)
    expect(page).to have_content(budget.client_email)
    expect(page).to have_content(budget.description)
  end
end
