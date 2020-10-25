require 'faker'

# User.destroy_all
# City.destroy_all
# Listing.destroy_all
# Reservation.destroy_all

# 20.times do
#   User.create!(
#     email: Faker::Internet.email,
#     phone_number: "+3362543"+rand(1..8).to_s+rand(1..8).to_s+rand(1..8).to_s+rand(1..8).to_s,
#     description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote
#   )
# end

# 10.times do
#   City.create!(
#     name: Faker::Address.city,
#     zip_code: rand(1..8).to_s+rand(1..8).to_s+rand(1..8).to_s+rand(1..8).to_s+rand(1..8).to_s
#   )
#end

50.times do
  Listing.create!(
    available_beds: Faker::Number.between(from: 1, to: 10),
    price: Faker::Number.between(from: 20, to: 65),
    description: Faker::Quotes::Chiquito.sentence,
    has_wifi: [true, false].sample,
    welcome_message: Faker::Quote.yoda,
    user: User.all.sample,
    city: City.all.sample)
end

# 50.times do
#   Listing.create!(
#     available_beds: 2,
#     price: 20,
#     description: "ceci est un super appart",
#     has_wifi: true,
#     welcome_message: "hello there",
#     user: User.all.sample,
#     city: City.all.sample)
# end


# Listing.all.each do |listing|
#   5.times do 
#   Reservation.create!(
#   start_date: Faker::Date.between(from: '2020-01-01', to: '2020-01-30'),
#   end_date: Faker::Date.between(from: '2020-02-02', to: '2020-02-28'),
#   user: User.all.sample,
#   listing: listing
#   )
#   end
#   5.times do 
#     Reservation.create!(
#     start_date: Faker::Date.between(from: '2021-01-01', to: '2021-01-30'),
#     end_date: Faker::Date.between(from: '2021-02-02', to: '2021-02-28'),
#     user: User.all.sample,
#     listing: listing
#     )
#     end
# end

