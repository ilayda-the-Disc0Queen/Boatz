# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Boat.destroy_all

user = User.create(email: 'joeladamdickens@gmail.com', password: 'password', name: 'joel', last_name: 'dickens')

boats = Boat.create(user_id: user.id, name: 'Little Mermaid', price: 50, location: 'Bermuda', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145651/gulet-evita-m-1_euljuz.jpg")
boats = Boat.create(user_id: user.id, name: 'Batch 388', price: 60, location: 'London', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145651/HALCON-DEL-MAR-Featured-image-1_ptiwqg.jpg")
boats = Boat.create(user_id: user.id, name: 'Shark', price: 100, location: 'Cyprus', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145651/56m-Yacht-REGINA_-5689-26_jz3thu.jpg" )
boats = Boat.create(user_id: user.id, name: 'My Kids', price: 30, location: 'Bahamas', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145475/IMG_9654_pjfjmk.jpg")
boats = Boat.create(user_id: user.id, name: 'Virgin Mary', price: 35, location: 'Florida', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145651/ALL-ABOUT-YOU-Anchored-3-1030x687_b6q4fs.jpg")
boats = Boat.create(user_id: user.id, name: 'Seagull', price: 450, location: 'Tong Sai', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145651/ALL-ABOUT-YOU-Anchored-3-1030x687_b6q4fs.jpg")
boats = Boat.create(user_id: user.id, name: 'My Precious', price: 75, location: 'Kalymnos', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145651/AN%C4%90EO_u7j2rx.jpg")
boats = Boat.create(user_id: user.id, name: 'Poseidon', price: 60, location: 'Müritz', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/thumb_ee3a2741_1300x878px_eblmdu.jpg")
boats = Boat.create(user_id: user.id, name: 'Sea Beauty', price: 130, location: 'Bodensee', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/45170_e7g97n.jpg")
boats = Boat.create(user_id: user.id, name: 'The Rick', price: 200, location: 'Istanbul', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/be4e4fd1bcb87d92f342f6e3e3e1d9e2_XL_lp8h28.jpg")
boats = Boat.create(user_id: user.id, name: 'The Morty', price: 75, location: 'Lagos', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/Hacker_Runabout_2010_i9gswq.jpg")
boats = Boat.create(user_id: user.id, name: 'Dreamboat', price: 100, location: 'Gulf of Mexico', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145653/Yacht-At-Last-side-view_agoi8q.jpg")



# boats = Boat.create(user_id: user.id, name: 'Starfish', price: 85, location: 'Margarita', :image "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/45170_e7g97n.jpg")
# boats = Boat.create(user_id: user.id, name: 'Titanic', price: 55, location: 'Menorca', :image "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/be4e4fd1bcb87d92f342f6e3e3e1d9e2_XL_lp8h28.jpg")
# boats = Boat.create(user_id: user.id, name: 'Mrs Blue', price: 50, location: 'Zansibar', image: "https://res.cloudinary.com/dv59x91lc/image/upload/v1590145652/Hacker_Runabout_2010_i9gswq.jpg")
