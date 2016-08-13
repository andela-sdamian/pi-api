# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Temperature.create([
#  { reading: 3.0 },
#  { reading: 2.0 },
#  { reading: 1.0 }
# ])
#
# Humidity.create([
#  { reading: 3.0 },
#  { reading: 2.0 },
#  { reading: 1.0 }
# ])

# Motor.create(running: false)

Statistic.create([
                   { temperature: 30, humidity: 20, lux: 10, box_id: 1 },
                   { temperature: 90, humidity: 20, lux: 10, box_id: 2 },
                   { temperature: 20, humidity: 20, lux: 10, box_id: 1 },
                   { temperature: 30, humidity: 20, lux: 10, box_id: 4 },
                   { temperature: 80, humidity: 20, lux: 10, box_id: 1 },
                   { temperature: 23.1, humidity: 20, lux: 10, box_id: 1 },
                   { temperature: 30, humidity: 20, lux: 10, box_id: 1 }
                 ])
