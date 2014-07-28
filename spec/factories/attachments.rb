# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attachment do
    content { Faker::Lorem.sentence }
    association :task
  end
end
