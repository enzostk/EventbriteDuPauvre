# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('events')
Attendance.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

puts '#############################'
puts '#     JE FAIS LE MÉNAGE     #'
puts '#############################'

puts '',''

puts '#############################'
puts '#   JE PARS DE MA MAISON    #'
puts '#############################'

puts '',''

puts '#' * 20
puts '   Creating users'
puts '#' * 20

10.times do |i|
  User.create!(
    email: "testuser#{i}@yopmail.com",
    password: "password"
  )
end

puts '   Users created'
puts '#' * 20
puts '',''
puts '#' * 20
puts '   Creating events'
puts '#' * 20

10.times do
  Event.create!(
    start_date: Time.now + rand(10000..50000),
    duration: rand(1..5) * 20,
    title: Faker::Lorem.sentence(word_count: 2),
    description: Faker::Lorem.sentence(word_count: 20),
    price: rand(3..90) * 10,
    location: Faker::Address.city,
    admin_id: rand(1..5)
  )
end

puts '   Events created'
puts '#' * 20
puts '',''
puts '',''
puts '###################################'
puts '#    ET JE RENTRE À MA MAISON     #'
puts '###################################'

