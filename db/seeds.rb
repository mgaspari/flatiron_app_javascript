# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Keg.create(kitchen_id: 1, keg_content: 'beer', date_changed: '2017-10-01', amount_full: 100)
Keg.create(kitchen_id: 1, keg_content: 'root_beer', date_changed: '2017-09-01', amount_full: 100)
