# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dog.destroy_all
Owner.destroy_all


adam = Owner.create(name: "Adam Adolfo", email: "adam_adolfo8@gmail.com", password_digest: "password", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "http://darkroom-cdn.s3.amazonaws.com/2014/04/BUTTONBaseball2.jpg")

Dog.create(name: "lucy", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperement: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/GM4o3n3.png", owner_id: adam.id, age: 8
)

