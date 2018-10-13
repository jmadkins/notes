# frozen_string_literal: true

FactoryBot.define do
  factory :notebook do
    owner { create(:user) }
    name { Faker::LordOfTheRings.location }
  end
end
