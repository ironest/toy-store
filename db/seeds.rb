# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..10

    user = {
        email: Faker::Internet.email,
        password: Faker::Internet.password(min_length: 8)
    }

    User.create( user )

    puts "User #{i} | #{user[:email]} | #{user[:password]}"

end

users = User.all

for i in 1..20

    toy = {
        name: Faker::Game.title,
        description: Faker::Lorem.paragraph(sentence_count: 4),
        posted: Faker::Date.between(from: 1.year.ago, to: 2.days.ago),
        user_id: users.sample.id
    }

    Toy.create( toy )

    puts "Toy #{i} | #{toy[:name]} | #{toy[:description]} | #{toy[:posted]} | #{toy[:user_id]}"

end
