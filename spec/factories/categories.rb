# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    association :board
  end
end
