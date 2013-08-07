# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'plasmarobo', email: 'plasmarobo@gmail.com', password: 'gravity', password_confirmation: 'gravity')
CardSet.create(icon:'/assets/images/mm_set.png', image:'/assets/images/mm_set_big.png', name:'Merry Men Alpha', release:Date.current())
mm = CardSet.find_by_name('Merry Men Alpha')
BasicCard.create(name: 'MMCrew', card_set: mm, rarity:'Common', background:'/assets/images/CardBkg.png', icon_a:'/assets/images/p.png', icon_b:'/assets/images/e.png', icon_c:'/assets/images/g.png')
CrewCard.create(basic_card: BasicCard.find_by_name('MMCrew'), engineer: 5, gunner:4, image:'/assets/images/test.png', name:'test', pilot:8)