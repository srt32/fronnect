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
user2 = User.create(email: "nikhil@example.com", first_name: "Nikhil", last_name: "Taneja", username: "ntaneja", password: "password")


event1 = user1.events.create(title: "Coding", description: "Coding at Galvanize", venue: "Galvanize", address: "1062 Delaware St, Denver, CO", starts_at: "2014-01-26 12:00:00")
event2 = user2.events.create(title: "Skiing", description: "Take advantage of all the fresh powder at Breck", venue: "Breckenridge Ski Resort", address: "Breckenridge, CO", starts_at: "2014-01-25 06:00:00")
event3 = user2.events.create(title: "Lunch", description: "Group lunch!", venue: "Zocalo", address: "12 E 11th Ave, Denver, CO 80203", starts_at: "2014-01-24 12:00:00")
event3 = user2.events.create(title: "Coffee", description: "Coffee shop I've been wanting to check out", venue: "Roostercat", address: "", starts_at: "2014-01-23 12:00:00")


