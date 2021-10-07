# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

location1 = Location.create(name: "Down Town Loop")
location2 = Location.create(name: "Uptown")

Trip.create(name: "Willis Tower", address: "233 S. Wacker Dr. Chicago, IL", budget: 250.55, location: location1)
Trip.create(name: "The Art Institute of Chicago", address: "111 S. Michigan Ave. Chicago, IL",budget: 550.75, location: location1)
Trip.create(name: "Discovery Place Science", address: "301 N Tryon St. Charlotte, NC", budget: 1250.00, location: location2)
