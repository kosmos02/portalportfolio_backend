# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alex = User.create(username: "agabriel", password: "alex", name: "Alexander Gabriel", title: "Full Stack Developer", phone_number: "7192444120", email: "alexandrgabe@gmail.com")

Portfolio.create(user: alex, project_name1: "Wanderlust", tech1: "Ruby on Rails, RESTful methods, Javascript, Google Maps API", description1: "User can select a location on the map to mark. They can post notes about this location and other users can post comments as well.", project_name2: "TrivAbility", tech2: "Ruby on Rails, React, Open DB Trivia API", description2: "A two player trivia game where the objective is to get to the end gameboard space. Correct answers move the player further.", project_name3: "ZodiHack", tech3: "Ruby on Rails, Javascript, Aztro API", description3: "Aesthetically appeasing horoscope app. User can select their zodiac and view their horoscope for yesterday, today, and tomorrow.")