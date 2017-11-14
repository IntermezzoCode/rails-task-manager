# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.create!(
  name: 'Tim Rue',
  description: 'Rudi-Dutschke Straße 26'
)

Task.create!(
  name: 'Charlotte',
  description: 'Rudi-Dutschke Straße 25'
)

Task.create!(
  name: 'Cafe Bonjour',
  description: 'Kottbusser Straße 34'
)
