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
puts '2. 🏠 Creating "instruction1" - chocolate...'

  instruction1 = Instruction.new(
    name:    "chocolate",
    address: "2A southborough terrace, cv31 2dt leamington",
    user_id: 1,
    )
  instruction1.save!

puts 'Finished "instruction1" - Chocolate!'

puts separator
puts '3. ➡️ Creating "7 steps" - for chocolate ...'

  url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929948/Seeds/dyndwlezxtdg479pzy99.png"

  step1 = Step.new(
    position:   1,
    description: "🦶 make sure you are here: cv312dt brunswick street",
    status: false,
    instruction_id: 1,
    )
  step1.remote_photo_url = url
  step1.save!

  url= "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929949/Seeds/sgy8n6k6c5gxsmxwo97a.png"

  step2 = Step.new(
    position:   2,
    description: "🦶 go to the main door ",
    status: false,
    instruction_id: 1,
    )
  step2.remote_photo_url = url
  step2.save!

  url ="https://res.cloudinary.com/dsupdin1s/image/upload/v1569929951/Seeds/ukdfgfgsyetosnpksf3v.png"
  step3 = Step.new(
    position:   3,
    description: "🔑 in the porch, turn round: the safe is behind you ",
    status: false,
    instruction_id: 1,
    )
  step3.remote_photo_url = url
  step3.save!


  url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929952/Seeds/qsr36rzwthkikextc9ow.png"
  step4 = Step.new(
    position:   4,
    description: "🦶 climb till 1st floor ",
    status: false,
    instruction_id: 1,
    )
  step4.remote_photo_url = url
  step4.save!

 url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929953/Seeds/msqlm5pw2mf5efjwxewp.png"
 step5 = Step.new(
    position:   5,
    description: "🎉 welcome home ",
    status: false,
    instruction_id: 1,
    )
  step5.remote_photo_url = url
  step5.save!

 url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929954/Seeds/unfmdote0dquwlx7dduq.png"
 step6 = Step.new(
    position:   6,
    description: "🅿️ here is the free parking for resident ",
    status: false,
    instruction_id: 1,
    )
  step6.remote_photo_url = url
  step6.save!

 url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569929955/Seeds/del2lrcpygfipqnahlep.png"
 step7 = Step.new(
    position:   7,
    description: " ☕ you live in fron of the best coffee in town",
    status: false,
    instruction_id: 1,
    )
  step7.remote_photo_url = url
  step7.save!

puts 'Finished 7 steps for chocolate!'

puts separator
puts '4. 📖 Creating "keyinfos" - chocolate ...'

  keyinfo1 = Keyinfo.new(
    checkout: "11:00 AM",
    wifiname: "Onestream TNCAP8D6417",
    wificode: "577D44B1D2",
    owner: "katia",
    contact: "+44 7484 723518",
    instruction_id: 1,
    )
  keyinfo1.save!

puts 'Finished chocolate - Keyinfo1 !'

puts separator
puts '5. 🍲 Creating "instruction2"- pancakes...'

  instruction2 = Instruction.new(
    name:    "pancakes",
    user_id: 1,
    )
  instruction2.save!

puts 'Finished to create "instruction2"- pancakes!'

puts separator
puts '6. ➡️ Creating "7 steps" - for pancakes...'

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569254996/Seeds/xtmsvtlvybmfgo2cxqfy.jpg"
      step1 = Step.new(
        position:   1,
        description: "🥄 3 spoons of cereales",
        status: false,
        instruction_id: 2,
        )
      step1.remote_photo_url = url
      step1.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569255032/Seeds/jind7xrhsn27vguzxj8o.jpg"
      step2 = Step.new(
        position:   2,
        description: "🥄 3 spoons of pumpkin seeds",
        status: false,
        instruction_id: 2,
        )
      step2.remote_photo_url = url
      step2.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569255095/Seeds/ag7wt54mpkpjgnamfw6v.jpg"
      step3 = Step.new(
        position:   3,
        description: "1 Egg",
        status: false,
        instruction_id: 2,
        )
      step3.remote_photo_url = url
      step3.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569255127/Seeds/l9jxtdvhzevfdifq3h2w.jpg"
      step4 = Step.new(
        position:   4,
        description: "🥚 1 spoon of yoghurt",
        status: false,
        instruction_id: 2,
        )
      step4.remote_photo_url = url
      step4.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569255164/Seeds/pbq8imkyt9fjw5kqoxha.jpg"
      step5 = Step.new(
        position:   5,
        description: "add cinnamon",
        status: false,
        instruction_id: 2,
        )
      step5.remote_photo_url = url
      step5.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569255194/Seeds/plemyludbhz4ouvixrg4.jpg"
      step6 = Step.new(
        position:   6,
        description: "🧂 add salt",
        status: false,
        instruction_id: 2,
        )
      step6.remote_photo_url = url
      step6.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1569255217/Seeds/n9pchfbvdokmgzhrco26.jpg"
      step7 = Step.new(
        position:   7,
        description: "🎉 mix everything",
        status: false,
        instruction_id: 2,
        )
      step7.remote_photo_url = url
      step7.save!
      puts 'Finished 7 steps for pancakes!'


puts '7. 🍲 Creating "instruction3" - Michelle dressing...'

  instruction3 = Instruction.new(
    name:    "Michelle dressing",
    user_id: 1,
    )
  instruction3.save!

puts 'Finished to create "instruction3"- Michelle dressing !'


puts separator
puts '8. ➡️ Creating "14 steps" - for Michelle dressing...'

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731575/Seeds/raxahygff2ia9vzveykt.jpg"
      step1 = Step.new(
        position:   1,
        description: "🦶 prepare all ingredients",
        status: false,
        instruction_id: 3,
        )
      step1.remote_photo_url = url
      step1.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731634/Seeds/hbyd3fldhjctwwikohjl.jpg"
      step2 = Step.new(
        position:   2,
        description: "🥄 2 spoons of dijon mustard",
        status: false,
        instruction_id: 3,
        )
      step2.remote_photo_url = url
      step2.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731667/Seeds/l8pcjyzxh62sbmomfnhi.jpg"
      step3 = Step.new(
        position:   3,
        description: "🥄 2 spoons of wholegrain mustard",
        status: false,
        instruction_id: 3,
        )
      step3.remote_photo_url = url
      step3.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731704/Seeds/s1slngs5giqjtks6t1lu.jpg"
      step4 = Step.new(
        position:   4,
        description: "🥄 2 spoons of honey",
        status: false,
        instruction_id: 3,
        )
      step4.remote_photo_url = url
      step4.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731734/Seeds/tnysuu5hcgqbm7grhinv.jpg"
      step5 = Step.new(
        position:   5,
        description: "1 shot of olive oil",
        status: false,
        instruction_id: 3,
        )
      step5.remote_photo_url = url
      step5.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731762/Seeds/yvxfih86uvtxqxlltss7.jpg"
      step6 = Step.new(
        position:   6,
        description: "1 shot of sesame oil",
        status: false,
        instruction_id: 3,
        )
      step6.remote_photo_url = url
      step6.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731903/Seeds/zrqtkirybeqxphievysp.jpg"
      step7 = Step.new(
        position:   7,
        description: "1 shot of vinegar",
        status: false,
        instruction_id: 3,
        )
      step7.remote_photo_url = url
      step7.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579731947/Seeds/vt1srkwx7fdutnhxe9ja.jpg"
      step8 = Step.new(
        position:   8,
        description: "1 shot of cider vinegar",
        status: false,
        instruction_id: 3,
        )
      step8.remote_photo_url = url
      step8.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579732001/Seeds/b76vlhnvkbhk4jsyji2k.jpg"
      step9 = Step.new(
        position:   9,
        description: "🍋 half a lemon squized",
        status: false,
        instruction_id: 3,
        )
      step9.remote_photo_url = url
      step9.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579732049/Seeds/okgsdztyjia6zqlfyruo.jpg"
      step10 = Step.new(
        position:   10,
        description: "4 garlics + parsley",
        status: false,
        instruction_id: 3,
        )
      step10.remote_photo_url = url
      step10.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579732090/Seeds/ywkqhfqrhnalziuhnkze.jpg"
      step11 = Step.new(
        position:   11,
        description: "✂️scisser finely",
        status: false,
        instruction_id: 3,
        )
      step11.remote_photo_url = url
      step11.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579732112/Seeds/ydfyvm8bkrnddyvpuvwe.jpg"
      step12 = Step.new(
        position:   12,
        description: "add mixture to the sauce",
        status: false,
        instruction_id: 3,
        )
      step12.remote_photo_url = url
      step12.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579732131/Seeds/m612jrkxklknp1i53bjh.jpg"
      step13 = Step.new(
        position:   13,
        description: "add salt and pepper",
        status: false,
        instruction_id: 3,
        )
      step13.remote_photo_url = url
      step13.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579732174/Seeds/ey36uib8vtk0yjmnj83z.jpg"
      step14 = Step.new(
        position:   14,
        description: "💃 shake baby shake",
        status: false,
        instruction_id: 3,
        )
      step14.remote_photo_url = url
      step14.save!

      puts 'Finished 14 steps for Michelle dressing!'


puts '9. 🍲 Creating "instruction5" - Salmon quiche...'

    instruction4 = Instruction.new(
      name:    "salmon quiche",
      user_id: 1,
      )
    instruction4.save!

puts 'Finished to create "instruction4- Salmon quiche !'

puts separator
puts '10. ➡️ Creating "16 steps" - for Salmon quiche...'

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818005/Seeds/l1l7ihgt4tnecgwvuk6p.jpg"
      step1 = Step.new(
        position:   1,
        description: "🦶 prepare all ingredients",
        status: false,
        instruction_id: 4,
        )
      step1.remote_photo_url = url
      step1.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818188/Seeds/b9mur4ntodwrwsrvpcsy.jpg"
      step2 = Step.new(
        position:   2,
        description: "🦶 Preheat oven at 180deg",
        status: false,
        instruction_id: 4,
        )
      step2.remote_photo_url = url
      step2.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818236/Seeds/i5k6vinbpawlq6dpxmp7.jpg"
      step3 = Step.new(
        position:   3,
        description: "🦶 boil water in a pan",
        status: false,
        instruction_id: 4,
        )
      step3.remote_photo_url = url
      step3.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818281/Seeds/e9dpdi4htpzu0kjvfb32.jpg"
      step4 = Step.new(
        position:   4,
        description: " 🥚 break 4 eggs",
        status: false,
        instruction_id: 4,
        )
      step4.remote_photo_url = url
      step4.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818524/Seeds/fjlpdzwfpvbto9hzcoiq.jpg"
      step5 = Step.new(
        position:   5,
        description: "🦶add 200g of crème fraîche",
        status: false,
        instruction_id: 4,
        )
      step5.remote_photo_url = url
      step5.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818711/Seeds/quvljcqkurqs1qhks0mg.jpg"
      step6 = Step.new(
        position:   6,
        description: " 🦶 grate 120g of cheese",
        status: false,
        instruction_id: 4,
        )
      step6.remote_photo_url = url
      step6.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579818775/Seeds/wi1xnflljcywf5i7r3md.jpg"
      step7 = Step.new(
        position:   7,
        description: "🦶 incorporate grated cheese",
        status: false,
        instruction_id: 4,
        )
      step7.remote_photo_url = url
      step7.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819055/Seeds/jphe4yxqqeywkghd5zcz.jpg"
      step8 = Step.new(
        position:   8,
        description: "🦶 turn off fire and drop brocolis",
        status: false,
        instruction_id: 4,
        )
      step8.remote_photo_url = url
      step8.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819110/Seeds/qdauazgcdwohpma8io3a.jpg"
      step9 = Step.new(
        position:   9,
        description: "⌛ Remove brocolis after 10 min",
        status: false,
        instruction_id: 4,
        )
      step9.remote_photo_url = url
      step9.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819163/Seeds/olquv2bct2l4bywnrli3.jpg"
      step10 = Step.new(
        position:   10,
        description: "🦶 put olive oil in the plate",
        status: false,
        instruction_id: 4,
        )
      step10.remote_photo_url = url
      step10.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819264/Seeds/jswbrdjgjsn7hj2b6wmb.jpg"
      step11 = Step.new(
        position:   11,
        description: "🦶 unroll the pastry",
        status: false,
        instruction_id: 4,
        )
      step11.remote_photo_url = url
      step11.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819313/Seeds/fhph3jwu1qegtc4yorow.jpg"
      step12 = Step.new(
        position:   12,
        description: "🦶 add the brocolis",
        status: false,
        instruction_id: 4,
        )
      step12.remote_photo_url = url
      step12.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819416/Seeds/issupyl4jhuxyqr6ftpg.jpg"
      step13 = Step.new(
        position:   13,
        description: "🦶 add 120g of salmon",
        status: false,
        instruction_id: 4,
        )
      step13.remote_photo_url = url
      step13.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819562/Seeds/vlsazautcpwvmnalwxtj.jpg"
      step14 = Step.new(
        position:   14,
        description: "🦶 poor the mixture cream",
        status: false,
        instruction_id: 4,
        )
      step14.remote_photo_url = url
      step14.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1579819635/Seeds/kkhhw0ouop1sswacwxh0.jpg"
      step15 = Step.new(
        position:   15,
        description: "🦶 bake for 25 min",
        status: false,
        instruction_id: 4,
        )
      step15.remote_photo_url = url
      step15.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580066984/Seeds/salmon-broccoli-quiche-1_zzdaeh.jpg"
      step16 = Step.new(
        position:   16,
        description: "🎉 Enjoy with salad & Michelle's dressing",
        status: false,
        instruction_id: 4,
        )
      step16.remote_photo_url = url
      step16.save!

puts 'Finished 16 steps for Salmon quiche!'

puts '11. 🍲 Creating "instruction5" - Amani soup...'

    instruction5 = Instruction.new(
      name:    "Amani soup",
      user_id: 1,
      )
    instruction5.save!

puts 'Finished to create "instruction5"- Amani soup !'


puts separator
puts '12. ➡️ Creating "18steps" - for Amani soup...'

url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/9b80666f-01d4-4825-a0e0-a012694afc7c_sszb1z.jpg"
      step1 = Step.new(
        position:   1,
        description: "🦶 cut 3 oignons",
        status: false,
        instruction_id: 5,
        )
      step1.remote_photo_url = url
      step1.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/fc71d06d-c007-40f5-a5d5-4996072cb31c_vbslf2.jpg"
      step2 = Step.new(
        position:   2,
        description: "🦶 warm olive oil",
        status: false,
        instruction_id: 5,
        )
      step2.remote_photo_url = url
      step2.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/5bd03e02-525d-495f-b399-16901c96418e_uzmday.jpg"
      step3= Step.new(
        position:   3,
        description: "🦶 fry the oignons",
        status: false,
        instruction_id: 5,
        )
      step3.remote_photo_url = url
      step3.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/107faa8b-9e01-4dfb-aeef-26ac68944c88_ypfb8g.jpg"
      step4= Step.new(
        position:   4,
        description: "🥕 take 4 carrots",
        status: false,
        instruction_id: 5,
        )
      step4.remote_photo_url = url
      step4.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/0d601a92-03b4-42da-a6e4-7ae6002461df_ikiecy.jpg"
      step5= Step.new(
        position:   5,
        description: "🦶 cut the carrots",
        status: false,
        instruction_id: 5,
        )
      step5.remote_photo_url = url
      step5.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/5edb10e9-60ec-43cc-b876-c4446042d6b4_rk8jdg.jpg"
      step6= Step.new(
        position:   6,
        description: "🦶 finish to fry with oignons",
        status: false,
        instruction_id: 5,
        )
      step6.remote_photo_url = url
      step6.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/16cf7e8b-2b9e-4e3c-ad36-90c585069999_mhkefo.jpg"
      step7= Step.new(
        position:   7,
        description: "🦶 at this point this is ready",
        status: false,
        instruction_id: 5,
        )
      step7.remote_photo_url = url
      step7.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/16cf7e8b-2b9e-4e3c-ad36-90c585069999_mhkefo.jpg"
      step8= Step.new(
        position:   8,
        description: "🦶 at this point this is ready",
        status: false,
        instruction_id: 5,
        )
      step8.remote_photo_url = url
      step8.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/88a24d08-c112-4ba0-8fd4-ce086782e85a_gaqw7z.jpg"
      step9= Step.new(
        position:   9,
        description: "🥔+🍠 take 2 potatoes",
        status: false,
        instruction_id: 5,
        )
      step9.remote_photo_url = url
      step9.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/b2489bd3-2e21-4486-a137-28f90371adb1_xtsadm.jpg"
      step10= Step.new(
        position:   10,
        description: "🔪 cut in cubes",
        status: false,
        instruction_id: 5,
        )
      step10.remote_photo_url = url
      step10.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/2667e1e8-0498-4d04-9669-12139635b58c_chxh4l.jpg"
      step11= Step.new(
        position:   11,
        description: "🦶 cook with onions and carrots",
        status: false,
        instruction_id: 5,
        )
      step11.remote_photo_url = url
      step11.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068235/Seeds/16e6d03f-e5d1-4a43-a399-7000b1ecc53b_dzdris.jpg"
      step12= Step.new(
        position:   12,
        description: "🦶 poor half a cup of lentils",
        status: false,
        instruction_id: 5,
        )
      step12.remote_photo_url = url
      step12.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/7124f56b-dc62-4665-8298-b304e8a6085b_ns2txj.jpg"
      step13= Step.new(
        position:   13,
        description: "🦶 wash them with water",
        status: false,
        instruction_id: 5,
        )
      step13.remote_photo_url = url
      step13.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/2bbdfeb7-9256-4350-a30a-9d6208b92f28_fzg5qn.jpg"
      step14= Step.new(
        position:   14,
        description: "🦶 add lentils to potatoes",
        status: false,
        instruction_id: 5,
        )
      step14.remote_photo_url = url
      step14.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068233/Seeds/82b9c3f4-4c6d-435d-bc4c-6f25a8c0451e_yhuvrh.jpg"
      step15= Step.new(
        position:   15,
        description: "⌛ cook 1h with water",
        status: false,
        instruction_id: 5,
        )
      step15.remote_photo_url = url
      step15.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068234/Seeds/863c871d-8a3b-4a75-92c5-753377505f53_cqgxmp.jpg"
      step16= Step.new(
        position:   16,
        description: "🦶 add Turmeric + Cumin ",
        status: false,
        instruction_id: 5,
        )
      step16.remote_photo_url = url
      step16.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070004/Seeds/IMG_3866_fu4l37.heic"
      step17= Step.new(
        position:   17,
        description: "🦶 mix everything",
        status: false,
        instruction_id: 5,
        )
      step17.remote_photo_url = url
      step17.save!

            url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580068249/Seeds/lentille-soup_e7sqch.jpg"
      step18= Step.new(
        position:   18,
        description: "🎉 enjoy a healthy soup!",
        status: false,
        instruction_id: 5,
        )
      step18.remote_photo_url = url
      step18.save!

puts 'Finished 18 steps for Amani soup!'

puts '13. 🍲 Creating "instruction6" - Katia tajine...'

    instruction6 = Instruction.new(
      name:    "Katia tajine",
      user_id: 1,
      )
    instruction6.save!

puts 'Finished to create "instruction6"- Katia tajine !'


puts separator
puts '14. ➡️ Creating "10 steps" - for Katia tajine...'

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070377/Seeds/d7a83c2f-1d3a-4593-b5c3-88b3c1f7fe6b_o8t1uu.jpg"
      step1= Step.new(
        position:   1,
        description: "🦶 cut 4 garlics + parsley",
        status: false,
        instruction_id: 6,
        )
      step1.remote_photo_url = url
      step1.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070377/Seeds/b8ee8aba-89ba-4f8b-9da9-726233d58429_erlggx.jpg"
      step2= Step.new(
        position:   2,
        description: "🍎 cut 6 apples",
        status: false,
        instruction_id: 6,
        )
      step2.remote_photo_url = url
      step2.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070376/Seeds/265b3c2e-50f5-477d-8e08-5176e41831d6_l9m2wh.jpg"
      step3= Step.new(
        position:   3,
        description: "🦶 fry garlics with olive oil",
        status: false,
        instruction_id: 6,
        )
      step3.remote_photo_url = url
      step3.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070380/Seeds/e23ee0c6-3499-426b-8a55-4d2fc2c6b2b9_jytzo4.jpg"
      step4= Step.new(
        position:   4,
        description: "🦶 add 8 chicken thighs + parsley",
        status: false,
        instruction_id: 6,
        )
      step4.remote_photo_url = url
      step4.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070380/Seeds/e23ee0c6-3499-426b-8a55-4d2fc2c6b2b9_jytzo4.jpg"
      step5= Step.new(
        position:   5,
        description: "🦶 add 8 chicken thighs",
        status: false,
        instruction_id: 6,
        )
      step5.remote_photo_url = url
      step5.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070376/Seeds/16606c42-e2fa-45fc-8110-0f70694e4dd0_q1ugnz.jpg"
      step6= Step.new(
        position:   6,
        description: "⏳ cook for 2 min",
        status: false,
        instruction_id: 6,
        )
      step6.remote_photo_url = url
      step6.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070376/Seeds/16606c42-e2fa-45fc-8110-0f70694e4dd0_q1ugnz.jpg"
      step7= Step.new(
        position:   7,
        description: "🦶 add parsley",
        status: false,
        instruction_id: 6,
        )
      step7.remote_photo_url = url
      step7.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070377/Seeds/b8ee8aba-89ba-4f8b-9da9-726233d58429_erlggx.jpg"
      step8= Step.new(
        position:   8,
        description: "🦶 add apples",
        status: false,
        instruction_id: 6,
        )
      step8.remote_photo_url = url
      step8.save!


      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580071434/Seeds/P4170189_fzm13f.jpg"
      step9= Step.new(
        position:   9,
        description: "⏳ cook for 1 hour",
        status: false,
        instruction_id: 6,
        )
      step9.remote_photo_url = url
      step9.save!

      url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580071445/Seeds/Screenshot_2020-01-26_at_20.43.40_zx2fpr.png"
      step10= Step.new(
        position:   10,
        description: "🎉 enjoy a good tajine with semoule",
        status: false,
        instruction_id: 6,
        )
      step10.remote_photo_url = url
      step10.save!

puts 'Finished 10 steps for Katia tajine!'

# puts '15. 🍲 Creating "instruction7" - Sara tajine...'

#     instruction7 = Instruction.new(
#       name:    "Sara tajine",
#       user_id: 1,
#       )
#     instruction7.save!

# puts 'Finished to create "instruction7"- Sara tajine !'


# puts separator
# puts '16. ➡️ Creating "10 steps" - for Sara tajine...'

#       url = "https://res.cloudinary.com/dsupdin1s/image/upload/v1580070377/Seeds/d7a83c2f-1d3a-4593-b5c3-88b3c1f7fe6b_o8t1uu.jpg"
#       step1= Step.new(
#         position:   1,
#         description: "🦶 cut 4 garlics + parsley",
#         status: false,
#         instruction_id: 7,
#         )
#       step1.remote_photo_url = url
#       step1.save!

