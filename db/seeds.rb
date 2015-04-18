User.create(email: "user1@example.com", address: "1 First St. 94598",  lat: 37.923583, lng: -122.007946, category: 1)
User.create(email: "user2@example.com", address: "2 First St. 94598",  lat: 37.922009, lng: -122.007946, category: 2)
User.create(email: "user3@example.com", address: "3 First St. 94598",  lat: 37.921307, lng: -122.007946, category: 3)
User.create(email: "user4@example.com", address: "4 First St. 94598",  lat: 37.918793, lng: -122.007946, category: 4)


6.times do
  Project.create(
    sun_number: 62 + rand(37),
    mo_elec_bill: 30 + rand(150),
    zillow_estimate: 200_000 + rand(3_000_000),
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip_code}",
    lat: "#{Faker::Address.latitude}",
    long: "#{Faker::Address.longitude}"
  )
end

3.times do
  Company.create(
    :name => Faker::Company.name
  )
end
