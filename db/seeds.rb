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
city: "Bel Air", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "http://darkroom-cdn.s3.amazonaws.com/2014/04/BUTTONBaseball2.jpg")

sam = Owner.create(name: "Sam", email: "sam@email.com", password_digest: "Sam", age: 30, age_preference: "any", friendship_type: "friends",
owner_exp: "5 years", gender_preference: "any", looking_for: "Walking buddy.",
city: "Forrest Hill", state: "Maryland", willing_mile_radius: "10 Miles", image_url: "https://i.imgur.com/nbZfNbD.jpg")

charlie = Owner.create(name: "Charlie", email: "charlie@email.com", password_digest: "Charlie", age: 21, age_preference: "female", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "Dog-sit trading occasionally",
city: "Gaithersburg", state: "Maryland", willing_mile_radius: "25 Miles", image_url: "https://i.imgur.com/tE5zBNx.jpg")

ash = Owner.create(name: "Ash", email: "ash@mail.com", password_digest: "ash", age: 24, age_preference: "any", friendship_type: "friends",
owner_exp: "a few months", gender_preference: "any", looking_for: "Runs with dogs.",
city: "Bethesda", state: "Maryland", willing_mile_radius: "50 Miles", image_url: "https://i.imgur.com/HUpNF73.jpg")



Dog.create(name: "lucy", breed: "Boxer/Husky", gender: "female", gets_along_with: "both", 
temperament: "submissive until food or bones involved", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "both", enjoys: "digging, walking, bones, attention, car rides", dislikes: "puppies, dogs touching her toys, bones, food",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/GM4o3n3.png", owner_id: adam.id, age: 8
)

Dog.create(name: "Bella", breed: "Unknown", gender: "female", gets_along_with: "both", 
temperament: "Wild and fun", great_date: 0, dominate_submissive: "dominate",
leash: "leashed", one_on_one_group: "one-on-one", enjoys: "Jumping", dislikes: "Bigger dogs",
adopted_breeder: "breeder", img_url: "https://i.imgur.com/Zqcbj9w.jpg", owner_id: sam.id, age: 8
)

Dog.create(name: "Charles", breed: "Unknown", gender: "male", gets_along_with: "females", 
temperament: "Well behaved in all scenarios", great_date: 0, dominate_submissive: "submissive",
leash: "leashed", one_on_one_group: "both", enjoys: "Having proper posture.", dislikes: "Wild and misbehaved dogs.",
adopted_breeder: "breeder", img_url: "https://i.imgur.com/2nBJvQx.jpg", owner_id: charlie.id, age: 8
)

Dog.create(name: "Lela", breed: "Other", gender: "female", gets_along_with: "both", 
temperament: "shy", great_date: 0, dominate_submissive: "submissive",
leash: "leashed", one_on_one_group: "both", enjoys: "toys", dislikes: "noises",
adopted_breeder: "adopted", img_url: "https://i.imgur.com/XBXd62X.jpg", owner_id: ash.id, age: 8
)
