# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Baby.destroy_all
Milestone.destroy_all
BabyMilestone.destroy_all

daniel = User.create(username: 'Daniel123', first_name: 'Daniel', last_name: 'Ko', password: '123')
baby = Baby.create(first_name: 'Jenny', last_name: 'Ko', user: daniel, relationship: 'Dad', birth_date: '02-02-19', delivered_in: 'Saint. Johns Hospital', delivered_by: 'Kevin McAlear', weight: '8', height: '1', first_address: '97 Pitt. St. LES, NY', horoscope_sign: 'Aries')

first_word = Milestone.create(first_word: 'DADA!! at home.')
first_walk = Milestone.create(first_walk: 'At Home')
first_food = Milestone.create(first_food: "Grandma's House")
first_tooth = Milestone.create(first_tooth: 'At Home.')
first_smile = Milestone.create(first_smile: 'At Home.')
first_laugh = Milestone.create(first_laugh: 'At Home.')
first_crawl = Milestone.create(first_crawl: 'At Home.')
first_sitting_up = Milestone.create(first_sitting_up: 'At Home.')
first_outing = Milestone.create(first_outing: 'The Park')


fave_toy = Milestone.create(fave_toy: 'Blocks')
fave_game = Milestone.create(fave_game: 'Peek-A-Boo')
fave_book = Milestone.create(fave_book: 'Le Petit Prince')
fave_show = Milestone.create(fave_show: 'Peppa Pig')
fave_food = Milestone.create(fave_show: 'Pizza')
fave_song = Milestone.create(fave_song: 'One Love, Bob Marley')
fave_blanket = Milestone.create(fave_blanket: 'A Beach Towel')
fave_outfit = Milestone.create(fave_blanket: 'Your onesie')
fave_activity = Milestone.create(fave_activity: 'Playdates With Vanessa')


post_1 = Medium.create(link: "https://images.unsplash.com/photo-1482405034111-0f96ff461f9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "Hey princess", date: "11-14-2018", baby: baby)
post_2 = Medium.create(link: "https://images.unsplash.com/photo-1489072246845-18e24c2840d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "Hey princess", date: "10-14-2018", baby: baby)
post_3 = Medium.create(link: "https://images.unsplash.com/photo-1523881542461-305ab566932f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "When I held you for the first time", date: "10-19-2018", baby: baby)
post_4 = Medium.create(link: "https://images.unsplash.com/photo-1522851104951-0375cc433ed2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "I wonder what you were dreaming about", date: "11-24-2018", baby: baby)
post_5 = Medium.create(link: "https://images.unsplash.com/photo-1508214406285-c765025445df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "This day was awesome.", date: "12/14/18", baby: baby)
post_6 = Medium.create(link: "https://images.unsplash.com/photo-1513790935210-acec1ddde534?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "You loved that blue bear I got you from Coney Island.", date: "09-27-2018", baby: baby)
post_7 = Medium.create(link: "https://images.unsplash.com/photo-1497040923817-6a91724f801a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "Waiting for your arrival <3.", date: "12-14-2018", baby: baby)
post_8 = Medium.create(link: "https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "New favorite toy alert! Jackson's gift to you right before you broke it.", date: "12-14-2018", baby: baby)
post_9 = Medium.create(link: "https://images.unsplash.com/photo-1516189997422-95e31c89369d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80", caption: "Your first sledding by Grandma's. Let it snow. Let it snow, Let it snow. ", date: "12-14-2018", baby: baby)
post_10 = Medium.create(link: "https://images.unsplash.com/photo-1528218635780-5952720c9729?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80", caption: "The first photos of our first photo of you.", date: "12-14-2018", baby: baby)


word_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1473531761844-5a14668fc8f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80',date: '06-01-19', caption: "You finally spoke today. I wish you did that in front of your mom though, since she doesn't believe me. Regardless, I'm a proud dad.", baby: baby, milestone: first_word )
walk_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1491440305722-061438e1cdc8?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80', date: '06-02-19', caption: "You took your first step today and walked all the way to me from across the room. I know I say this a lot, but I'm such a proud dad.", baby: baby, milestone: first_walk )
food_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1544829832-c8047d6b9d89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-03-19', caption: "You finally ate an avocado today. You probably get your love for them from me. YUM! You make me so proud.",baby: baby, milestone: first_food )
tooth_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1498159551354-e44d84854c2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-04-19', caption: "You finally got your first tooth today. Chomp chomp.",baby: baby, milestone: first_tooth )
smile_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1544659762-de211a802924?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-05-19', caption: "I saw you crack your first smile, and it completely made my day. I think you have your mother's smile.", baby: baby, milestone: first_smile )
laugh_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1526390676621-1cc93c59a749?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80', date: '06-10-19', caption: "When you laugh, the sun comes out on a cloudy day. That was corny, but you get it.", baby: baby, milestone: first_laugh )
crawl_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1504151864552-57020b6b876b?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80', date: '06-11-19', caption: "Your first crawl happened today and it was straight to puppers (of course). Look at you go!", baby: baby, milestone: first_crawl )
sitting_up_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1552511762-898bfd9fb837?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-12-19', caption: "She's up! This was your first sitting up and I can't believe you'kk be walking soon. I'm such a proud dad.", baby: baby, milestone: first_sitting_up )
outing_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1475716220633-d3f9c6073750?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-13-19', caption: "I remember this day like it was yesterday. We had so much fun and I never wated this day to end, but MAN did you wear us out.", baby: baby, milestone: first_outing )

food_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1551443873-3631c0742c53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-14-19', caption: "Money PIZZA Respect. It's the key to life. It's also your favorite food. But seriously though, I need you to eat more veggies.", baby: baby, milestone: fave_food )
toy_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1491013516836-7db643ee125a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-05-19', caption: "You love those blocks. I'm sure you'll lose half the alphabet soon. I'm a proud dad.", baby: baby, milestone: fave_toy )
game_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1550831858-3c2581fed470?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-06-19', caption: "You love to play Peek-A-Boo. And I love it too because that smile is priceless!", baby: baby, milestone: fave_game )
book_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1504151932400-72d4384f04b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80', date: '06-07-19', caption: "You love it when I read you Le Petit Prince. I know all the words by heart now. I'm a proud dad.", baby: baby, milestone: fave_book )
show_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1515012003471-9d658cf66e1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=60', date: '06-08-19', caption: "Can't stop watching Peppa Pig on TV. I'm starting to get really tired of that themem song.", baby: baby, milestone: fave_show )
song_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1526739178209-77cd6c6bcf4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-14-19', caption: "It's always been 'One Love' on repeat. You get your love for Bob Marley from your dad.", baby: baby, milestone: fave_song )
blanket_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1434425937023-dd37d1512d9d?ixlib=rb-1.2.1&auto=format&fit=crop&w=150&q=80', date: '06-15-19', caption: "You were never a blankie kinda girl. You loved beach towels instead, like mom does. Cheers to soaking up the sun.", baby: baby, milestone: fave_blanket )
outfit_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1522771930-78848d9293e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-16-19', caption: "That onesie Aunty got you. Even though you'll outgrow it by tomorrow.", baby: baby, milestone: fave_outfit )
activity_milestone = BabyMilestone.create(link: 'https://images.unsplash.com/photo-1549001043-a57119d93dcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=150&q=80', date: '06-17-19', caption: "You always looked forward to playdates with baby Vanessa. We love how ypu both took turns scribbling in your coloring book.", baby: baby, milestone: fave_activity )

# letter1 = Letter.create(content: 'This is the first card. la di la di la di da.', baby: baby)



