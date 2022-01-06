# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "foot#{n}@example.com" }
    password { 'password' }
    name { 'Taro' }
  end
end
