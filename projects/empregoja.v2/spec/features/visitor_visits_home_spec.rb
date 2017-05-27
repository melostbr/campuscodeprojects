# frozen_string_literal: true
require 'rails_helper'

feature 'Visitor visits Emprego Ja home page' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_css('h1', text: 'Emprego Já')
  end
end
