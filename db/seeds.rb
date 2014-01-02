# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Event.delete_all

user = User.create(email: "simon@example.com", password: "password")
user = User.create(email: "nikhil@example.com", password: "password")
user = User.create(email: "jeff@example.com", password: "password")

# event = Event.create(user_id: 1, title: "Skiing", description: "Day trip to Vail", venue: "Vail Resort", address: "Vail, CO", when: 2014-01-06 08:00:00 UTC..2014-01-06 16:00:00 UTC)
# event = Event.create(user_id: 3, title: "Brunch", description: "Informal get together", venue: "Dozens", address: "236 W 13th Ave Denver, CO 80204", when: 2014-01-06 08:00:00 UTC..2014-01-06 16:00:00 UTC)

