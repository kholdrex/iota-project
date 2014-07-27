# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name { Faker::Lorem.characters(rand(5..20)) }
    description { Faker::Lorem.characters(rand(20..50)) }
    association :board
  end
end
