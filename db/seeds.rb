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
    encrypted_password: 'password'
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
    host_id: User.all.sample.id
  )
end

puts '   Events created'
puts '#' * 20
puts '',''
puts '#' * 20
puts 'Creating attendances'
puts '#' * 20
# users_ids = User.all.ids
# Event.all.each do |event|
#   (users_ids - [event.host.id]).sample(rand(2..5)).each do |user_id|
#     Attendance.create!(
#       stripe_customer_id: Faker::Alphanumeric.unique.alpha(number: 10),
#       attended_event_id: event.id,
#       guest_id: user_id
#     )
#     end
# end

puts '   Events created'
puts '#' * 20
puts '',''
puts '###################################'
puts '#    ET JE RENTRE À MA MAISON     #'
puts '###################################'

