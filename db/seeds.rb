# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
time=Time.now
10.times { Timesheet.create!(employee_id: 1, rate: 300, company:"MTN", date: Date.new(2021, 12, 8), start_time: time.to_s(:time), end_time: time.to_s(:time)) }