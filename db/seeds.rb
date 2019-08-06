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


puts 'Creating "flat" - chocolate nest ...'

  flat1 = Flat.new(
    name:    "Chocolate nest",
    address: "2A southborough Terrace, CV325BL Leamington spa, England",
    owner_id: 1,
    )
  flat1.save!

puts 'Chocolate nest finished!'


puts 'Creating "7 steps" - for chocolate nest...'

  step1 = Step.new(
    number:   1,
    description: "make sure you are here",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step1.save!

  step2 = Step.new(
    number:   2,
    description: "stand in front of the main door",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step2.save!

  step3 = Step.new(
    number:   3,
    description: "turn round to find the safe",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step3.save!

  step4 = Step.new(
    number:   4,
    description: "climb till 1st floor",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step4.save!


 step5 = Step.new(
    number:   6,
    description: "welcome home!",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step5.save!

 step6 = Step.new(
    number:   7,
    description: "here is the free parking for resident",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step6.save!

 step7 = Step.new(
    number:   8,
    description: "you live in fron of the best coffee in town",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  step7.save!

puts 'Finished 8 steps for chocolate nest!'
