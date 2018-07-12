# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ian = User.create(name: "Ian", age: 29, gender: "Male", email: "ian@email.com", password: "123", img_src: "")
Matt = User.create(name: "Matt", age: 35, gender: "Male", email: "matt@email.com", password: "123", img_src: "")
Channing = User.create(name: "Channing", age: 30, gender: "Male", email: "channing@email.com", password: "123", img_src: "")
Gabe = User.create(name: "Gabe", age: 27, gender: "Male", email: "gabe@email.com", password: "123", img_src: "")
BodegaDaddy = Team.create(name: "BodegaDaddy")
UserTeam.create(user_id: Matt.id, team_id: BodegaDaddy.id)
UserTeam.create(user_id: Ian.id, team_id: BodegaDaddy.id)
UserTeam.create(user_id: Gabe.id, team_id: BodegaDaddy.id)
UserTeam.create(user_id: Channing.id, team_id: BodegaDaddy.id)
OneProv = Team.create(name: "OneProv")
UserTeam.create(user_id: Channing.id, team_id: OneProv.id)
TwoProv = Team.create(name: "TwoProv")
UserTeam.create(user_id: Gabe.id, team_id: TwoProv.id)
UserTeam.create(user_id: Matt.id, team_id: TwoProv.id)
TheBest = Team.create(name: "TheBest")
UserTeam.create(user_id: Ian.id, team_id: TheBest.id)
OhMyGerd = Show.create(name: "Oh My Gerd", location: "312 W 28th", teams: [OneProv, BodegaDaddy])
DumbThing = Show.create(name: "Big Dumb Thing", location: "4100 W 42nd", teams: [TwoProv, TheBest])
Wow = Show.create(name: "Wow", location: "2 E 2nd", teams: [BodegaDaddy, TwoProv, TheBest])
