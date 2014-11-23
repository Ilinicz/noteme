# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do 
  Note.create!(
    title:        Faker::Lorem.sentence(2),
    body:         Faker::Lorem.paragraph(10),
    published_at: Faker::Date.backward(100),
    archived:     false
    )
end

puts "CREATED 50 NOTES"
