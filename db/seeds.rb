User.create!(name: "test1", email: "test1@test.com", location: "hermosa beach", distance_willing_to_travel: 5, password_digest: "password")

User.create!(name: "test2", email: "test2@test.com", location: "manhattan beach", distance_willing_to_travel: 5, password_digest: "password")
User.create!(name: "test3", email: "test3@test.com", location: "hermosa beach", distance_willing_to_travel: 5, password_digest: "password")

User.create!(name: "test4", email: "test4@test.com", location: "manhattan beach", distance_willing_to_travel: 5, password_digest: "password")

User.create!(name: "test5", email: "test5@test.com", location: "santa monica", distance_willing_to_travel: 6, password_digest: "password")





Activity.create!(user_id: 1, ability_level: 4, activity_type: "cycling")
Activity.create!(user_id: 2, ability_level: 5, activity_type: "cycling")
Activity.create!(user_id: 3, ability_level: 4, activity_type: "cycling")
Activity.create!(user_id: 4, ability_level: 3, activity_type: "volleyball")

Availability.create!(user_id: 1, date: '2022-09-01', time_range: "7am - 10am")
Availability.create!(user_id: 2, date: '2022-09-01', time_range: "4pm - 8pm")
Availability.create!(user_id: 1, date: '2022-09-01', time_range: "4pm - 8pm")
Availability.create!(user_id: 3, date: '2022-09-02', time_range: "12pm - 4pm")

Seeking.create!(user_id: 1, max_ppl: 3, date_time_wanted: '2013-02-02 01:00:00 UTC')
Seeking.create!(user_id: 2, max_ppl: 1, date_time_wanted: '2020-02-02 01:00:00 UTC')
Seeking.create!(user_id: 2, max_ppl: 4, date_time_wanted: '2022-02-02 01:00:00 UTC')

