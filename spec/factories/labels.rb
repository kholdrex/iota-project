# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :label do
    name { Faker::Lorem.word }
    color { Faker::Commerce.color }
    association :board
    # tasks { |a| [a.association(:task)] }
  end
end
