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

example1 = Owner.create(name: "example1", email: "example1.com", password_digest: "example1", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/nbZfNbD.jpg")

example2 = Owner.create(name: "example2", email: "example2.com", password_digest: "example2", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/tE5zBNx.jpg")

example3 = Owner.create(name: "example3", email: "example3.com", password_digest: "example3", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/HUpNF73.jpg")

example4 = Owner.create(name: "example4", email: "example4.com", password_digest: "example4", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/80sr1d5.jpg")

example5 = Owner.create(name: "example5", email: "example5.com", password_digest: "example5", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/O8yqa0A.jpg")

example6 = Owner.create(name: "example6", email: "example6.com", password_digest: "example6", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "person to walk on trails with",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/bWlbWIZ.jpg")



Dog.create(name: "lucy", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/GM4o3n3.png", owner_id: adam.id, age: 8
)

Dog.create(name: "example1", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/Zqcbj9w.jpg", owner_id: example1.id, age: 8
)

Dog.create(name: "example2", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/2nBJvQx.jpg", owner_id: example2.id, age: 8
)

Dog.create(name: "example3", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/XBXd62X.jpg", owner_id: example3.id, age: 8
)

Dog.create(name: "example4", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/LbkfftN.jpg", owner_id: example4.id, age: 8
)

Dog.create(name: "example5", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/6ECoqWt.jpg", owner_id: example5.id, age: 8
)

Dog.create(name: "example6", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/5hy5j2D.jpg?1", owner_id: example6.id, age: 8
)

Dog.create(name: "example7", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/zaO6ePU.jpg", owner_id: example6.id, age: 8
)