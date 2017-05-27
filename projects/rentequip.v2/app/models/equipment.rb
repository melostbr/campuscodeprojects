# frozen_string_literal: true
class Equipment < ApplicationRecord
  validates :code, :name, :serial_number, :supplier, :category, :value, :status,
            presence: true
end
