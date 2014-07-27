# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  User.create( name: Faker::Name.name, login: Faker::Internet.user_name,
          email: Faker::Internet.email, password: Faker::Internet.password )

  Board.create( name: Faker::Lorem.word, description: Faker::Lorem.sentence, 
                priority: Faker::Number.digit )
end