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


# l1 = Log.create(user_id: u1.id, title: "b", start: "2020-07-15", water: 10, mood: 4, note: "Went to gym")
# l2 = Log.create(user_id: u2.id, title: "a", start: "2020-07-13", water: 11, mood: 2, note: "Someone broke into my car")
# l3 = Log.create(user_id: u1.id, title: "c", start: "2020-07-10", water: 3, mood: 1, note: "Broke my legs")
# l4 = Log.create(user_id: u2.id, title: "d", start: "2020-07-12", water: 14, mood: 5, note: "Passed my interview!")
# l5 = Log.create(user_id: u1.id, title: "e", start: "2020-07-16", water: 9, mood: 3, note: "Okay..")

l1 = Log.create(user_id: u1.id, title: "Went to gym", start: "2020-07-15", water: 10, mood: 4)
l2 = Log.create(user_id: u2.id, title: "Someone broke into my car", start: "2020-07-13", water: 4, mood: 2)
l3 = Log.create(user_id: u1.id, title: "Broke my legs", start: "2020-07-10", water: 3, mood: 1)
l4 = Log.create(user_id: u2.id, title: "Passed my interview!", start: "2020-07-12", water: 14, mood: 5)
l5 = Log.create(user_id: u1.id, title: "Rachel...", start: "2020-07-16", water: 2, mood: 1)

l6 = Log.create(user_id: u1.id, title: "Passed my exam", start: "2020-08-12", water: 12, mood: 5)
l7 = Log.create(user_id: u1.id, title: "Fishing", start: "2020-08-16", water: 9, mood: 3)
l8 = Log.create(user_id: u1.id, title: "Got my liscence", start: "2020-07-17", water: 13, mood: 4)
l9 = Log.create(user_id: u1.id, title: "New kicks", start: "2020-07-21", water: 2, mood: 4)


s1 = Sleep.create(log_id: l1.id, start_time: "22:00", end_time: "7:00")
s2 = Sleep.create(log_id: l2.id, start_time: "20:00", end_time: "5:00")
s3 = Sleep.create(log_id: l3.id, start_time: "18:00", end_time: "6:00")
s4 = Sleep.create(log_id: l4.id, start_time: "23:00", end_time: "1:00")
s5 = Sleep.create(log_id: l5.id, start_time: "21:00", end_time: "4:00")

s6 = Sleep.create(log_id: l5.id, start_time: "5:00", end_time: "6:00")
s7 = Sleep.create(log_id: l5.id, start_time: "6:30", end_time: "7:00")
s8 = Sleep.create(log_id: l1.id, start_time: "7:30", end_time: "9:00")

m1 = Meal.create(log_id: l1.id, time: "8:00", name: "hot dog")
m2 = Meal.create(log_id: l2.id, time: "2:00", name: "pizza")
m3 = Meal.create(log_id: l3.id, time: "4:00", name: "rice")
m4 = Meal.create(log_id: l4.id, time: "23:00", name: "burger")
m5 = Meal.create(log_id: l5.id, time: "14:00", name: "duck")

m6 = Meal.create(log_id: l1.id, time: "13:00", name: "ramen")
m7 = Meal.create(log_id: l1.id, time: "19:00", name: "fries")
m8 = Meal.create(log_id: l2.id, time: "10:00", name: "cereal")
m9 = Meal.create(log_id: l4.id, time: "7:00", name: "french toast")

m10 = Meal.create(log_id: l8.id, time: "4:00", name: "cake")
m11 = Meal.create(log_id: l8.id, time: "23:00", name: "grilled cheese")
m12 = Meal.create(log_id: l9.id, time: "14:00", name: "chocolate")
m13 = Meal.create(log_id: l7.id, time: "23:00", name: "burger")
m14 = Meal.create(log_id: l7.id, time: "13:00", name: "sushi")



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


# m6 = Meal.create(log_id: l1.id, food: "chicken", time: )

# do i really need multiple sleep times?... 