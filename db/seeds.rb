User.create!(name: "test1", email: "test1@test.com", location: "hermosa beach", distance_willing_to_travel: 5, password_digest: "password")

User.create!(name: "test2", email: "test2@test.com", location: "manhattan beach", distance_willing_to_travel: 5, password_digest: "password")
User.create!(name: "test3", email: "test3@test.com", location: "hermosa beach", distance_willing_to_travel: 5, password_digest: "password")

User.create!(name: "test4", email: "test4@test.com", location: "manhattan beach", distance_willing_to_travel: 5, password_digest: "password")

User.create!(name: "test5", email: "test5@test.com", location: "santa monica", distance_willing_to_travel: 6, password_digest: "password")





Activity.create!(user_id: 1, ability_level: 4, activity_type: "cycling")
Activity.create!(user_id: 2, ability_level: 5, activity_type: "cycling")
Activity.create!(user_id: 3, ability_level: 4, activity_type: "cycling")
Activity.create!(user_id: 4, ability_level: 3, activity_type: "volleyball")