# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    due { 4.hours.from_now }
    parents_ids { [Faker::Number.digit, Faker::Number.digit, Faker::Number.digit] }
    state { Faker::Number.digit }
    assignees { [Faker::Number.digit, Faker::Number.digit, Faker::Number.digit] }
    priority { Faker::Number.digit }
    association :category
    #labels { |a| [a.association(:label)] }
  end
end
