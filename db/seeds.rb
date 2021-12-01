# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paul = User.create!(email: "paul@tremblay.com", password:"123456")
george = User.create!(email: "george@germain.com", password:"123456")
jacque = User.create!(email: "jacque@germain.com", password:"123456")
daniel = User.create!(email: "daniel@peterson.com", password:"123456")
robert = User.create!(email: "robert@skywalker.com", password:"123456")
william = User.create!(email: "william-la@hotmail.com", password:"123456")


game1 = Game.create!(creator: william, opponent: paul, winner: william, game_data: "Victoire William")
game2 = Game.create!(creator: paul, opponent: william, winner: william, game_data: "Victoire William")
game3 = Game.create!(creator: paul, opponent: william, winner: paul, game_data: "Victoire Paul")
