# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'plasmarobo', email: 'plasmarobo@gmail.com', password: 'gravity', password_confirmation: 'gravity')
type = Type.create(name: 'Crew', image: '/assets/images/mm_set.png')
edition = Edition.create(name: 'Merry Men', card: '/assets/images/CardBkg.png', symbol: '/assets/images/mm_set.png')
set = CardSet.create(name: 'Merry Men Alpha', symbol: '/asset/images/mm_set.png')
u = Crew.create(ability_a: "Ability A test [T]", ability_b: "Multiline ability test<br />Second line [U]", edition: e, flavor: "I don't even<br /> -Plasma", image: "/assets/images/test.png", name: "test00", cardset: set, type: type, pilot: 1, engineer: 2, gunner: 3)
Card.create(cardset: set, content: "A test card", e_type: 1, edition: edition, g_type:7, name: "test01", p_type: 5, type: type)
c = Card.create()
c = u.ToCard();
c.save()