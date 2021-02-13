# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alex = User.create(username: "agabriel", password: "alex", name: "Alexander Gabriel", title: "Full Stack Developer", phone_number: "7192444120", email: "alexandrgabe@gmail.com")

alex_portfolio = Portfolio.create(user: alex) 
Project.create(portfolio: alex_portfolio, project_name: "Wanderlust", tech: "Ruby on Rails, RESTful methods, Javascript, Google Maps API", description: "User can select a location on the map to mark. They can post notes about this location and other users can post comments as well.")
Project.create(portfolio: alex_portfolio, project_name: "TrivAbility", tech: "Ruby on Rails, React, Open DB Trivia API", description: "A two player trivia game where the objective is to get to the end gameboard space. Correct answers move the player further.")
Project.create(portfolio: alex_portfolio, project_name: "ZodiHack", tech: "Ruby on Rails, Javascript, Aztro API", description: "Aesthetically appeasing horoscope app. User can select their zodiac and view their horoscope for yesterday, today, and tomorrow.")