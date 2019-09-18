# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
separator = "-------------------------------------------------"

puts separator

puts " 1. 👤 Creating 3 fake users... "
pswd = 'sophia'
# Create team accounts
team = [
  {first_name: 'Pierre', last_name: 'M\'Baga', email: 'pierrembaga@gmail.com', password: 'michelle', facebook_picture_url: 'https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-1/p320x320/11010628_840617416027523_944689620296317714_n.jpg?_nc_cat=109&_nc_oc=AQl2Uc1KDRtRQ_9ey9grtiwa6yY8-24Le17gNr2NCZY1xb99Zw1Obuwpnp8DTzd_I0rK4BFntbR_U2PeK3IASwHi&_nc_ht=scontent-lhr3-1.xx&oh=f59192c44c8c6a2694b7a0e5e35f772f&oe=5E07F0DD'},
  {first_name: 'Katia', last_name: 'Obedina', email: 'evobedi@gmail.com', password: 'michelle', facebook_picture_url: 'https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-1/p320x320/11755846_10206533557398425_451939157834557279_n.jpg?_nc_cat=102&_nc_oc=AQkGUgjCCru47_3By5t3nOXhnl9Y_n5eCbb2GbIlCzdI5KYeGYluOYskwXTf4VTeiF0PdwgLBbcEuAJD_ZMi2Cji&_nc_ht=scontent-lhr3-1.xx&oh=296c750d7ed46f57842b90b4e0462a9a&oe=5E078F07'},
  {first_name: 'Coach', last_name: 'Destinees', email: 'coachdestinees@gmail.com', password: 'michelle', facebook_picture_url: 'https://images2.storyjumper.com/transcoder.png?trim&id=3b-rvvfynss3m-5a14ks6cd&maxw=512&maxh=512'}
]
team.each do |teamate|
  User.create!(teamate)
end

puts 'Finished users!'

puts separator
puts '2. 🏠 Creating "flat" - chocolate nest ...'

  flat1 = Flat.new(
    name:    "Chocolate nest",
    address: "2A southborough terrace, cv31 2dt leamington",
    user_id: 1,
    )
  flat1.save!

puts 'Finished Chocolate nest!'

puts separator
puts '3. ➡️ Creating "7 arrivals" - for chocolate nest...'

  arrival1 = Arrival.new(
    number:   1,
    description: "make sure you are here📍cv312dt brunswick street",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival1.save!

  arrival2 = Arrival.new(
    number:   2,
    description: "go to the main door 🚶‍♀️",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival2.save!

  arrival3 = Arrival.new(
    number:   3,
    description: "in the porch, turn round: the safe is behind you 🔑",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival3.save!

  arrival4 = Arrival.new(
    number:   4,
    description: "climb till 1st floor",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival4.save!


 arrival5 = Arrival.new(
    number:   5,
    description: "welcome home 🎉",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival5.save!

 arrival6 = Arrival.new(
    number:   6,
    description: "here is the free parking for resident",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival6.save!

 arrival7 = Arrival.new(
    number:   7,
    description: "you live in fron of the best coffee in town",
    picture_url: Faker::Placeholdit.image('50x50', 'jpg', 'ffffff', '000', 'Some Custom Text'),
    status: false,
    flat_id: 1,
    )
  arrival7.save!

puts 'Finished 7 arrivals for chocolate nest!'

puts separator
puts '4. 📖 Creating "keyinfos" - chocolate nest ...'

  keyinfo1 = Keyinfo.new(
    checkout: "11:00 AM",
    wifiname: "Onestream TNCAP8D6417",
    wificode: "577D44B1D2",
    owner: "katia",
    contact: "+44 7484 723518",
    flat_id: 1,
    )
  keyinfo1.save!

puts 'Finished chocolate nest - Keyinfo1 !'

