# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Budget, type: :model do
  it 'must be valid' do
    budget = Budget.create
    expect(budget).not_to be_valid
    expect(budget.errors[:client_name]).to include('não pode ficar em branco')
    expect(budget.errors[:client_email]).to include('não pode ficar em branco')
    expect(budget.errors[:client_phone]).to include('não pode ficar em branco')
    expect(budget.errors[:description]).to include('não pode ficar em branco')
  end
end
