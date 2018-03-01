# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Rider.destroy_all

Rider.create(first_name: 'Dustin',    last_name: 'Green',     city: 'Hickory Hills',    state: 'IL', lat: '40.00', lng: '-105.35', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Jason',     last_name: 'Finn',      city: 'Huntington Beach', state: 'CA', lat: '39.95', lng: '-105.24', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Howard',    last_name: 'Thompson',  city: 'Hale',             state: 'MO', lat: '40.06', lng: '-105.26', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Maggie',    last_name: 'Lantz',     city: 'Dublin',           state: 'OH', lat: '40.03', lng: '-105.23', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Lawrence',  last_name: 'Duran',     city: 'Fort Myers',       state: 'FL', lat: '40.04', lng: '-105.23', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Irene',     last_name: 'Molina',    city: 'Tucson',           state: 'AZ', lat: '39.96', lng: '-105.22', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Nancy',     last_name: 'Garner',    city: 'Baltimore',        state: 'MD', lat: '39.98', lng: '-105.21', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Tara',      last_name: 'Taylor',    city: 'Minneapolis',      state: 'MN', lat: '40.00', lng: '-105.25', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Alejandro', last_name: 'Smith',     city: 'Scarborough',      state: 'ME', lat: '40.02', lng: '-105.26', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Tricia',    last_name: 'Renshaw',   city: 'Mystic',           state: 'CT', lat: '40.02', lng: '-105.30', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Travis',    last_name: 'Cook',      city: 'Twin Lakes',       state: 'WI', lat: '40.01', lng: '-105.20', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Joan',      last_name: 'Brooks',    city: 'Norfolk',          state: 'VA', lat: '39.98', lng: '-105.24', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Joseph',    last_name: 'Rodgers',   city: 'Wayne',            state: 'NJ', lat: '39.99', lng: '-105.25', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Matthew',   last_name: 'Gregson',   city: 'Brashear',         state: 'MO', lat: '40.01', lng: '-105.29', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Katie',     last_name: 'Dunlap',    city: 'Marion',           state: 'VA', lat: '39.97', lng: '-105.27', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Leo',       last_name: 'Howard',    city: 'Dallas',           state: 'TX', lat: '39.97', lng: '-105.33', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Maria',     last_name: 'Baisden',   city: 'Raleigh',          state: 'NC', lat: '40.00', lng: '-105.29', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Sandy',     last_name: 'Townsend',  city: 'Newport',          state: 'PA', lat: '40.05', lng: '-105.30', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Melinda',   last_name: 'Stephenson',city: 'Kahului',          state: 'HI', lat: '39.99', lng: '-105.31', avatar: Faker::Avatar.image)
Rider.create(first_name: 'Jason',     last_name: 'Nichols',   city: 'Alexandria',       state: 'VA', lat: '40.01', lng: '-105.32', avatar: Faker::Avatar.image)