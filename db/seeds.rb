# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'plasmarobo', email: 'plasmarobo@gmail.com', password: 'gravity', password_confirmation: 'gravity')
mm = CardSet.create(icon:'mm_set.png', image:'mm_set_big.png', name:'Merry Men Alpha', release:Date.current())
bc = mm.basic_cards.create(name: 'MMCrew', rarity:'Common', background:'CardBkg.png', icon_a:'p.png', icon_b:'e.png', icon_c:'g.png')
cc = bc.crew_cards.create(engineer: 5, gunner:4, image:'test.png', name:'test', pilot:8)
cc.create_ability(titleA:"Magic Disco Time", textA:"[T] this shit",titleB:"Unmagic disco stop", textB:"[U] this thing")