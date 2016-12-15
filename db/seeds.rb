# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.create(name: "Executive", sits: 20, available: true, user_id: 1)
Room.create(name: "Management", sits: 30, available: true, user_id: 1)
Room.create(name: "Byebye", sits: 95, available: true, user_id: 1)
Room.create(name: "Workers", sits: 75, available: true, user_id: 1)
Room.create(name: "Official", sits: 150, available: true, user_id: 1)
Room.create(name: "Stadium", sits: 500, available: true, user_id: 1)
Room.create(name: "Standard large", sits: 80, available: true, user_id: 1)
Room.create(name: "Standard", sits: 50, available: true, user_id: 1)
Room.create(name: "Small", sits: 20, available: true, user_id: 1)
Room.create(name: "Kids", sits: 6, available: true, user_id: 1)
Room.create(name: "Party", sits: 150, available: true, user_id: 1)
