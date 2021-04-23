# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.first_name }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(min_length: 10, max_length: 20) }
  end
end

# FactoryBot.define do
#   factory :user do
#     sequence(:name) do |n|
#       Faker::Config.random = Random.new(n)
#       Faker::Name.first_name
#     end
#
#     # sequence(:last_name) do |n|
#     #   Faker::Config.random = Random.new(n)
#     #   Faker::Name.last_name
#     # end
#
#     sequence(:email) do |n|
#       Faker::Config.random = Random.new(n)
#       Faker::Internet.email
#     end
#     # name {"#{first_name.parameterize} #{last_name.parameterize}"}
#     # email { "#{first_name.parameterize}.#{last_name.parameterize}@example.com" }
#     password { 'password123' }
#   end
# end
