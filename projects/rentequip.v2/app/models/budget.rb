# frozen_string_literal: true
class Budget < ApplicationRecord
  validates :client_name, :client_email, :client_phone, :description,
            presence: true
end
