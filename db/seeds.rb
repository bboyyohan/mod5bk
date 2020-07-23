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

l1 = Log.create(user_id: u1.id, date: DateTime.strptime("07/15/2020", "%m/%d/%Y"), water: 10, mood: 4, note: "Went to gym")
l2 = Log.create(user_id: u2.id, date: DateTime.strptime("07/13/2020", "%m/%d/%Y"), water: 11, mood: 2, note: "Someone broke into my car")
l3 = Log.create(user_id: u1.id, date: DateTime.strptime("07/10/2020", "%m/%d/%Y"), water: 3, mood: 1, note: "Broke my legs")
l4 = Log.create(user_id: u2.id, date: DateTime.strptime("07/12/2020", "%m/%d/%Y"), water: 14, mood: 5, note: "Passed my interview!")
l5 = Log.create(user_id: u1.id, date: DateTime.strptime("07/16/2020", "%m/%d/%Y"), water: 9, mood: 3, note: "Okay..")

