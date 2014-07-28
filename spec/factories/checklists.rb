# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checklist do
    name { Faker::Lorem.word }
    completed { [true, false].sample }
    association :task
  end
end
