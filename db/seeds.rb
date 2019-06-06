# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

daniel = User.create(username: 'Danko123', first_name: 'Daniel', last_name: 'Ko')
baby = Baby.create(first_name: 'Jenny', last_name: 'Ko', user: daniel, relationship: 'Dad', birth_date: '02-02-19', hospital_name: 'Saint. Johns Hospital', weight: '8', height: '1', first_address: '97 Pitt. St. LES, NY', horoscope_sign: 'Aries')

first_word = BabyFirstFave.create(first_word: 'DADA!!')
first_walk = BabyFirstFave.create(first_walk: 'At Home')
first_food = BabyFirstFave.create(first_food: "Grandma's House")
first_tooth = BabyFirstFave.create(first_tooth: 'At Home.')


fave_toy = BabyFirstFave.create(fave_toy: 'Polly Pocket')
fave_game = BabyFirstFave.create(fave_game: 'Peek-A-Boo')
fave_book = BabyFirstFave.create(fave_book: 'One Fish Two Fish')
fave_show = BabyFirstFave.create(fave_show: 'Peppa Pig')



word_milestone = BabyMilestone.create(date: '06-01-19', caption: "She finally spoke today. I'm a proud dad.", baby: baby, baby_first_fave: first_word )
walk_milestone = BabyMilestone.create(date: '06-02-19', caption: "She finally took her first step today. I'm a proud dad.",baby: baby, baby_first_fave: first_walk )
food_milestone = BabyMilestone.create(date: '06-03-19', caption: "She finally ate an avocado today. I'm a proud dad.",baby: baby, baby_first_fave: first_food )
tooth_milestone = BabyMilestone.create(date: '06-04-19', caption: "She finally got her first tooth today. I'm a proud dad.",baby: baby, baby_first_fave: first_tooth )
toy_milestone = BabyMilestone.create(date: '06-05-19', caption: "She loves her Polly Pocket. I'm a proud dad.",baby: baby, baby_first_fave: fave_toy )
game_milestone = BabyMilestone.create(date: '06-06-19', caption: "She loves to play Peek-A-Boo. I'm a proud dad.",baby: baby, baby_first_fave: fave_game )
book_milestone = BabyMilestone.create(date: '06-07-19', caption: "She loves when I read her Dr. Suess. I'm a proud dad.",baby: baby, baby_first_fave: fave_book )
show_milestone = BabyMilestone.create(date: '06-08-19', caption: "She can't stop watching Peppa Pig on TV. I'm a proud dad.",baby: baby, baby_first_fave: fave_show )


