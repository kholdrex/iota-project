# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    text { Faker::Lorem.sentence }
    rank { Faker::Number.digit }
    users_voted { [Faker::Number.digit, Faker::Number.digit] }
    association :task
    association :user
  end
end
