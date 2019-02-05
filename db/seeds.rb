# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stream.destroy_all
User.delete_all

Stream.create(title: "Dota 2", views: 150000, )
Stream.create(title: "Fortnite", views: 60000)
Stream.create(title: "CS:GO", views: 15000)
Stream.create(title: "PUBG", views: 80000)

User.create(username: "Artem", popularity: 6, streaming: true)
User.create(username: "Mila", popularity: 7, streaming: false)
