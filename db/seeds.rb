admin = User.create(name: "admin", email: "admin@admin.com", password: "admin", admin: true)
todd = User.create(name: "Todd", email: "todd@todd.com", password: "password")
archer = User.create(name: "Archer", email: "archer@archer.com", password: "password")
frank = User.create(name: "Frank", email: "frank@frank.com", password: "password")
bob = User.create(name: "Bob", email: "bob@bob.com", password: "password")
harry = User.create(name: "Harry", email: "harry@harry.com", password: "password")
maggie = User.create(name: "Maggie", email: "maggie@maggie.com", password: "password")

munchkin = Game.create(name: "Munchkin", min_players: 3, max_players: 6, description: "Kick in the door, beat the monster, loot the room, betray your friends(now enemies), beat your enemies(were friends), win the game.", play_time: "1 hour", mature_content: 0)
mtg = Game.create(name: "Magic the Gathering", min_players: 2, max_players: 4, description: "Card game with simple rules and endless strategy.", play_time: "5 - 15 minute matches", mature_content: 0)
above_and_below = Game.create(name: "Above and Below", min_players: 2, max_players: 4, description: "Build your village above and in the caverns below.", play_time: "90 minutes", mature_content: 0)
cah = Game.create(name: "Card against Humanity", min_players: 4, max_players: 20, description: "It's Cards against Humanity, leave your morals at the door.", play_time: "30 - 90 minutes", mature_content: 1)
esw = Game.create(name: "Epic Spell Wars", min_players: 2, max_players: 6, description: "Pick your wizard and battle each other to the death in this rediculous card game!", play_time: "20 - 40 minutes", mature_content: 1)

UserGame.create(user_id: todd.id, game_id: esw.id, favorite: 1)
UserGame.create(user_id: archer.id, game_id: munchkin.id)
UserGame.create(user_id: frank.id, game_id: above_and_below.id)
UserGame.create(user_id: bob.id, game_id: cah.id, favorite: 1)
UserGame.create(user_id: harry.id, game_id: mtg.id)

local_1 = Location.create(name: "That Big Building", address_1: "123 Broadway", address_2: "Room B", city: "New York", state: "NY", zip:"12345")
local_2 = Location.create(name: "The not so big building", address_1: "246 Simple St.", address_2: "Apt 8E", city: "Jersey City", state: "NJ", zip:"54321")
local_3 = Location.create(name: "Bob's Place", address_1: "1 First Ave.", address_2: "1st Floor", city: "Pittsburgh", state: "PA", zip:"24680")

casual = MeetUpType.create(name: "Casual", description: "Casual gaming: nothing too serious, just fun.  Great for anyone interested in starting to get into tabletop games.")
competitive = MeetUpType.create(name: "Competitive", description: "Competitive gaming: Better bring your A-Game to this session.")
social = MeetUpType.create(name: "Socail", description: "Socail gaming: Come, bring your friends, and make some new ones!")
party = MeetUpType.create(name: "Party", description: "Party gaming: Party games! Lots of people, even more fun!")
nsfk = MeetUpType.create(name: "Not Safe For kids", description: "Leave the kids at home. Dark games, with darker humor.")

first_meet_up = MeetUp.create(name: "Number 1", location_id: local_1.id, meet_up_type_id: casual.id, date: DateTime.new(2019, 1, 25), time: DateTime.new(2019, 1, 25, 18), game: munchkin)

UserMeetUp.create(user_id: todd.id, meet_up_id: first_meet_up.id)
UserMeetUp.create(user_id: archer.id, meet_up_id: first_meet_up.id)
UserMeetUp.create(user_id: frank.id, meet_up_id: first_meet_up.id)
UserMeetUp.create(user_id: bob.id, meet_up_id: first_meet_up.id)
UserMeetUp.create(user_id: harry.id, meet_up_id: first_meet_up.id)
UserMeetUp.create(user_id: maggie.id, meet_up_id: first_meet_up.id)
UserMeetUp.create(user_id: benny.id, meet_up_id: first_meet_up.id)