# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paul = User.create!(nom: "Paul", prenom: "Tremblay", email: "paul@tremblay.com", password:"123456",is_admin: false)
george = User.create!(nom: "George", prenom: "Germain", email: "george@germain.com", password:"123456",is_admin: false)
jacque = User.create!(nom: "Jacque", prenom: "Germain", email: "jacque@germain.com", password:"123456",is_admin: false)
daniel = User.create!(nom: "Daniel", prenom: "Peterson", email: "daniel@peterson.com", password:"123456",is_admin: false)
robert = User.create!(nom: "Robert", prenom: "Skywalker", email: "robert@skywalker.com", password:"123456",is_admin: false)
william = User.create!(nom: "William", prenom: "Perron", email: "william-la@hotmail.com", password:"123456", is_admin: true)


game
