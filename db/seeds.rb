# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Log.destroy_all

u1 = User.create(name: "Yo", username: "john", password_digest: "pass")
u2 = User.create(name: "Lena", username: "lena", password_digest: "word")

# l1 = Log.create(user_id: u1.id, date: DateTime.strptime("07/15/2020", "%m/%d/%Y"), water: 10, mood: 4, note: "Went to gym")
# l2 = Log.create(user_id: u2.id, date: DateTime.strptime("07/13/2020", "%m/%d/%Y"), water: 11, mood: 2, note: "Someone broke into my car")
# l3 = Log.create(user_id: u1.id, date: DateTime.strptime("07/10/2020", "%m/%d/%Y"), water: 3, mood: 1, note: "Broke my legs")
# l4 = Log.create(user_id: u2.id, date: DateTime.strptime("07/12/2020", "%m/%d/%Y"), water: 14, mood: 5, note: "Passed my interview!")
# l5 = Log.create(user_id: u1.id, date: DateTime.strptime("07/16/2020", "%m/%d/%Y"), water: 9, mood: 3, note: "Okay..")



l1 = Log.create(user_id: u1.id, title: "b", start: "2020-07-15", water: 10, mood: 4, note: "Went to gym")
l2 = Log.create(user_id: u2.id, title: "a", start: "2020-07-13", water: 11, mood: 2, note: "Someone broke into my car")
l3 = Log.create(user_id: u1.id, title: "c", start: "2020-07-10", water: 3, mood: 1, note: "Broke my legs")
l4 = Log.create(user_id: u2.id, title: "d", start: "2020-07-12", water: 14, mood: 5, note: "Passed my interview!")
l5 = Log.create(user_id: u1.id, title: "e", start: "2020-07-16", water: 9, mood: 3, note: "Okay..")

# s1 = Sleep.create(log_id: l1.id, quantity: 3)
# s2 = Sleep.create(log_id: l2.id, quantity: 4)
# s3 = Sleep.create(log_id: l3.id, quantity: 6)
# s4 = Sleep.create(log_id: l4.id, quantity: 7)
# s5 = Sleep.create(log_id: l5.id, quantity: 8)

# m1 = Meal.create(log_id: l1.id, quantity: 2)
# m2 = Meal.create(log_id: l2.id, quantity: 3)
# m3 = Meal.create(log_id: l3.id, quantity: 3)
# m4 = Meal.create(log_id: l4.id, quantity: 1)
# m5 = Meal.create(log_id: l5.id, quantity: 3)


