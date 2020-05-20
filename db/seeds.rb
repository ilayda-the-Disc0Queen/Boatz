# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.create(email: 'joeladamdickens@gmail.com', password: 'password', name: 'joel', last_name: 'dickens')

boats = Boat.create(user_id: user.id, name: 'Little Mermaid', price: 50, location: 'Bermuda')
boats = Boat.create(user_id: user.id, name: 'Batch 388', price: 60, location: 'London')
boats = Boat.create(user_id: user.id, name: 'Shark', price: 100, location: 'Cyprus')
boats = Boat.create(user_id: user.id, name: 'My Kids', price: 30, location: 'Bahamas')
boats = Boat.create(user_id: user.id, name: 'Virgin Mary', price: 35, location: 'Florida')
boats = Boat.create(user_id: user.id, name: 'Seagull', price: 450, location: 'Tong Sai')
boats = Boat.create(user_id: user.id, name: 'My Precious', price: 75, location: 'Kalymnos')
boats = Boat.create(user_id: user.id, name: 'Poseidon', price: 60, location: 'Müritz')
boats = Boat.create(user_id: user.id, name: 'Sea Beauty', price: 130, location: 'Bodensee')
boats = Boat.create(user_id: user.id, name: 'Strarfish', price: 85, location: 'Margarita')
boats = Boat.create(user_id: user.id, name: 'Titanic', price: 55, location: 'Menorca')
boats = Boat.create(user_id: user.id, name: 'Mrs Blue', price: 50, location: 'Zansibar')
