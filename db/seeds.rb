# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


for i in 1..20

    entry = {
        name: Faker::Game.title,
        description: Faker::Lorem.paragraph(sentence_count: 4),
        posted: Faker::Date.between(from: 1.year.ago, to: 2.days.ago),
        user: Faker::Name.first_name
    }

    Toy.create( entry )

    puts "Toy #{i} | #{entry[:name]} | #{entry[:description]} | #{entry[:posted]} | #{entry[:user]}"

end