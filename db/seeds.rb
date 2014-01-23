# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Event.delete_all
Attendee.delete_all

user1 = User.create(email: "simon@example.com", first_name: "Simon", last_name: "Taranto", username: "staranto", password: "password")
user2 = User.create(email: "nikhil.a.taneja@gmail.com", first_name: "Nikhil", last_name: "Taneja", username: "ntaneja", password: "password")
user3 = User.create(email: "adam@example.com", first_name: "Adam", last_name: "Magan", username: "amagan", password: "password")


event1 = user1.events.create(title: "Coding", description: "Coding at Galvanize", venue: "Galvanize", address: "1062 Delaware St, Denver, CO", starts_at: "2014-02-01 13:00:00")
event3 = user2.events.create(title: "Lunch", description: "Group lunch!", venue: "Tony's Market", address: "950 Broadway, Denver, CO 80203", starts_at: "2014-01-29 12:00:00")
event3 = user2.events.create(title: "Coffee", description: "Coffee shop I've been wanting to check out", venue: "Roostercat", address: "", starts_at: "2014-01-30 11:00:00")
event4 = user3.events.create(title: "Call of Duty", description: "My favorite video game", venue: "Le Marquis", address: "1170 Galapago St, Denver, CO 80204", starts_at: "2014-01-30 20:00:00")


