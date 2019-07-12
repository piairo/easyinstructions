# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 10 fake users...'
10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.first_name,
    email: Faker::Internet.email
    )
  user.save!
end
puts 'Finished users!'


puts 'Creating 10 fake flats...'
10.times do
  flat = Flat.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    owner_id: rand(2..5),
    )
  flat.save!
end
puts 'Finished flats!'


puts 'Creating 10 fake steps...'
10.times do
  step = Step.new(
    number:   rand(0..10),
    description: Faker::Food.description,
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: [true, false].sample,
    flat_id: rand(2..5),
    )
  step.save!
end
puts 'Finished steps!'
