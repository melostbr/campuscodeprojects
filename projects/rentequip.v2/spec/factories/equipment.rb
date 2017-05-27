# frozen_string_literal: true
FactoryGirl.define do
  factory :equipment do
    code 123
    name 'Betoneira'
    serial_number 'SAH4546'
    supplier 'Bosh'
    category 'Betoneiras'
    value '699,99'
    status 'Disponível'
  end
end
