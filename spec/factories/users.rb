# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password(6) }
    confirmed_at { Time.now }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :admin do
    user
    admin { true }
  end
end
