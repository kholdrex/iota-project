# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :board do
  	name 		{ Faker::Lorem.word }
  	description { Faker::Lorem.sentence }
  	priority    { Faker::Number.digit }
  end
end
