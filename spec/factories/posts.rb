# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { Faker::Name.first_name }
    # email { Faker::Internet.safe_email }
    body { Faker::Internet.password(min_length: 10, max_length: 20) }
    user
  end
end
