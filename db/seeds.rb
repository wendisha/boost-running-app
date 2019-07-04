# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#* users
User.create(username: "sarah", email: "sarah@test.com", password: "test") 
User.create(username: "jane", email: "jane@test.com", password: "test")

#* charities
Charity.create(name: "Toronto Cat Rescue", description: "No-kill, non-profit, registered charity.")
Charity.create(name: "POGO - Pediatric Oncology Group of Ontario", description: "We champion childhood cancer care on behalf of the childhood cancer community.")
Charity.create(name: "JDRF - Juvenile Diabetes Research Foundation", description: "Committed to improving the lives of every person with T1D and to curing this disease.")

#* runs
Run.create(distance: 5, duration: 51, location: "Indoor", notes: "Great!", user_id: 1, charity_id: 1)
Run.create(distance: 10, duration: 90, location: "Outdoor", notes: "Looong!", user_id: 2, charity_id: 1)
Run.create(distance: 4, duration: 45, location: "Outdoor", notes: "Felt amazing!", user_id: 2, charity_id: 3)
Run.create(distance: 1, duration: 10, location: "Indoor", notes: "Quick run.", user_id: 1, charity_id: 2)