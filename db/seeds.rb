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
user3 = User.create(email: "jeff@example.com", first_name: "Jeff", last_name: "Casimir", username: "jcasimir", password: "password")
user4 = User.create(email: "jonah@example.com", first_name: "Jonah", last_name: "Moses", username: "jmoses", password: "password")
user5 = User.create(email: "kevin@example.com", first_name: "Kevin", last_name: "Powell", username: "kpowell", password: "password")
user6 = User.create(email: "lauren@example.com", first_name: "Lauren", last_name: "Luhring", username: "lluhring", password: "password")
user7 = User.create(email: "bryana@example.com", first_name: "Bryana", last_name: "Knight", username: "bknight", password: "password")
user8 = User.create(email: "adam@example.com", first_name: "Adam", last_name: "Magan", username: "amagan", password: "password")

event3 = user3.events.create(title: "Skiing", description: "Day trip to Vail", venue: "Vail Resort", address: "Vail, CO", start_date: "2014-01-11", start_hour: 18, end_hour: 20 )
event4 = user4.events.create(title: "Brunch", description: "Catch up on what happened this weekend", venue: "Dozens", address: " 236 W 13th Ave, Denver, CO 80204", start_date: "2014-01-13", start_hour: 10, end_hour: 12 )
event5 = user5.events.create(title: "Movie", description: "Anchorman II", venue: "AMC Cherry Creek", address: "Denver, CO", start_date: "2014-01-16", start_hour: 20, end_hour: 22 )
event6 = user6.events.create(title: "6-Pack and Hack", description: "Much needed", venue: "Lauren's House", address: "Boulder, CO", start_date: "2014-01-20", start_hour: 8, end_hour: 18 )
event7 = user7.events.create(title: "Spa Day", description: "Galvanize has opened a new spa", venue: "Galvanize", address: "11th and Delaware, Denver, CO 80202", start_date: "2014-01-12", start_hour: 16, end_hour: 18 )
event8 = user8.events.create(title: "Call of Duty", description: "Who is up for a COD challenge", venue: "Le Marquis", address: "Denver, CO", start_date: "2014-01-11", start_hour: 4, end_hour: 8 )

