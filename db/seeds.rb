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
  {first_name: 'Pierre', last_name: 'M\'Baga', email: 'pierrembaga@gmail.com', password: 'michelle', facebook_picture_url: 'https://scontent.flhr4-2.fna.fbcdn.net/v/t1.0-9/11010628_840617416027523_944689620296317714_n.jpg?_nc_cat=109&_nc_ohc=totJjaRPBj4AX8QebuH&_nc_ht=scontent.flhr4-2.fna&oh=0fcf008c07dde37cf1bb05def3cb2082&oe=5E9B5CC4'},
  {first_name: 'Katia', last_name: 'Obedina', email: 'evobedi@gmail.com', password: 'michelle', facebook_picture_url: 'https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-1/p320x320/11755846_10206533557398425_451939157834557279_n.jpg?_nc_cat=102&_nc_oc=AQkGUgjCCru47_3By5t3nOXhnl9Y_n5eCbb2GbIlCzdI5KYeGYluOYskwXTf4VTeiF0PdwgLBbcEuAJD_ZMi2Cji&_nc_ht=scontent-lhr3-1.xx&oh=296c750d7ed46f57842b90b4e0462a9a&oe=5E078F07'},
  {first_name: 'Coach', last_name: 'Destinees', email: 'coachdestinees@gmail.com', password: 'michelle', facebook_picture_url: 'https://images2.storyjumper.com/transcoder.png?trim&id=3b-rvvfynss3m-5a14ks6cd&maxw=512&maxh=512'}
]
team.each do |teamate|
  User.create!(teamate)
end

puts 'Finished users!'

puts separator
puts '2. 🏠 Creating "flat" - chocolate...'

  flat1 = Flat.new(
    name:    "chocolate",
    address: "2A southborough terrace, cv31 2dt leamington",
    user_id: 1,
    )
  flat1.save!

puts 'Finished Chocolate!'

puts separator
puts '3. ➡️ Creating "7 arrivals" - for chocolate ...'

  url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569319346/vfremjqeqvfuqp9pwyit.png"
  arrival1 = Arrival.new(
    position:   1,
    description: "make sure you are here📍cv312dt brunswick street",
    photo: "https://res.cloudinary.com/dsupdin1s/image/upload/v1569346377/uuydxrujofrqtzi4tvze.heic",
    status: false,
    flat_id: 1,
    )
  arrival1.remote_photo_url = url
  arrival1.save!

  url= "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929949/sgy8n6k6c5gxsmxwo97a.png"
  arrival2 = Arrival.new(
    position:   2,
    description: "go to the main door 🚶‍♀️",
    status: false,
    flat_id: 1,
    )
  arrival2.remote_photo_url = url
  arrival2.save!

  url ="https://res.cloudinary.com/dsupdin1s/image/upload/v1569929951/ukdfgfgsyetosnpksf3v.png"
  arrival3 = Arrival.new(
    position:   3,
    description: "in the porch, turn round: the safe is behind you 🔑",
    status: false,
    flat_id: 1,
    )
  arrival3.remote_photo_url = url
  arrival3.save!


  url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929952/qsr36rzwthkikextc9ow.png"
  arrival4 = Arrival.new(
    position:   4,
    description: "climb till 1st floor",
    status: false,
    flat_id: 1,
    )
  arrival4.remote_photo_url = url
  arrival4.save!

 url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929953/msqlm5pw2mf5efjwxewp.png"
 arrival5 = Arrival.new(
    position:   5,
    description: "welcome home 🎉",
    status: false,
    flat_id: 1,
    )
  arrival5.remote_photo_url = url
  arrival5.save!

 url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929954/unfmdote0dquwlx7dduq.png"
 arrival6 = Arrival.new(
    position:   6,
    description: "here is the free parking for resident",
    status: false,
    flat_id: 1,
    )
  arrival6.remote_photo_url = url
  arrival6.save!

 url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929955/del2lrcpygfipqnahlep.png"
 arrival7 = Arrival.new(
    position:   7,
    description: "you live in fron of the best coffee in town",
    status: false,
    flat_id: 1,
    )
  arrival7.remote_photo_url = url
  arrival7.save!

puts 'Finished 7 arrivals for chocolate!'

puts separator
puts '4. 📖 Creating "keyinfos" - chocolate ...'

  keyinfo1 = Keyinfo.new(
    checkout: "11:00 AM",
    wifiname: "Onestream TNCAP8D6417",
    wificode: "577D44B1D2",
    owner: "katia",
    contact: "+44 7484 723518",
    flat_id: 1,
    )
  keyinfo1.save!

puts 'Finished chocolate - Keyinfo1 !'

puts separator
puts '5. 🏠 Creating "project" - pancakes...'

  flat1 = Flat.new(
    name:    "pancakes",
    user_id: 1,
    )
  flat1.save!

puts 'Finished pancakes!'

puts separator
puts '6. ➡️ Creating "5 steps" - for pancakes...'

  arrival1 = Arrival.new(
    position:   1,
    description: "3 spoons of cereales",
    status: false,
    flat_id: 2,
    )
  arrival1.save!

  arrival2 = Arrival.new(
    position:   2,
    description: "3 spoons of pumpkin seeds",
    status: false,
    flat_id: 2,
    )
  arrival2.save!

  arrival3 = Arrival.new(
    position:   3,
    description: "1 Egg",
    status: false,
    flat_id: 2,
    )
  arrival3.save!

  arrival4 = Arrival.new(
    position:   4,
    description: "1 spoon of yoghurt",
    status: false,
    flat_id: 2,
    )
  arrival4.save!


 arrival5 = Arrival.new(
    position:   5,
    description: "mix everything🎉",
    status: false,
    flat_id: 2,
    )
  arrival5.save!
  puts 'Finished 5 steps for pancakes!'

