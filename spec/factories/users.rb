# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email_address { Faker::Internet.email }
    password { Faker::Internet.password(6) }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :admin do
    user
    admin { true }
  end
end
