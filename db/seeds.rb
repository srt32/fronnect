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

user1 = User.create(email: "simon@example.com", password: "password")
user2 = User.create(email: "nikhil@example.com", password: "password")
user3 = User.create(email: "jeff@example.com", password: "password")
user4 = User.create(email: "jonah@example.com", password: "password")
user5 = User.create(email: "kevin@example.com", password: "password")
user6 = User.create(email: "lauren@example.com", password: "password")
user7 = User.create(email: "bryana@example.com", password: "password")
user8 = User.create(email: "adam@example.com", password: "password")

event3 = user3.events.create(title: "Skiing", description: "Day trip to Vail", venue: "Vail Resort", address: "Vail, CO", day_of_week: "5", start_hour: 18, end_hour: 20 )
event4 = user4.events.create(title: "Brunch", description: "Catch up on what happened this weekend", venue: "Dozens", address: " 236 W 13th Ave, Denver, CO 80204", day_of_week: "6", start_hour: 10, end_hour: 12 )
event5 = user5.events.create(title: "Movie", description: "Anchorman II", venue: "AMC Cherry Creek", address: "Denver, CO", day_of_week: "5", start_hour: 20, end_hour: 22 )
event6 = user6.events.create(title: "6-Pack and Hack", description: "Much needed", venue: "Lauren's House", address: "Boulder, CO", day_of_week: "0", start_hour: 8, end_hour: 18 )
event7 = user7.events.create(title: "Spa Day", description: "Galvanize has opened a new spa", venue: "Galvanize", address: "11th and Delaware, Denver, CO 80202", day_of_week: "5", start_hour: 16, end_hour: 18 )
event8 = user8.events.create(title: "Call of Duty", description: "Who is up for a COD challenge", venue: "Le Marquis", address: "Denver, CO", day_of_week: "6", start_hour: 4, end_hour: 8 )

