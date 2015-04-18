23.times do
  pr = Project.create(
    sun_number: 62 + rand(37),
    mo_elec_bill: 30 + rand(150),
    zillow_estimate: 200_000 + rand(3_000_000),
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip_code}",
    lat: Faker::Address.latitude,
    long: Faker::Address.longitude
  )

  us = User.create(
    email: Faker::Internet.email,
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip_code}",
    lat: Faker::Address.latitude,
    lng: Faker::Address.longitude,
    category: 4,
    price_paid: 15_000 + rand(14_000)
  )

  us.projects << pr # associate the new project with the new user
end

3.times do
  Company.create(
    :name => Faker::Company.name
  )
end

Company.all.each do |comp|
  Project.all.each do |proj|
    Bid.create(
      company: comp,
      project: proj,
      dollars: 15_000 + rand(14_000)
    )
  end
end
