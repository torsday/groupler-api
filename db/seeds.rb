oakland_st_name = [
  "12th Street",
  "7th Street",
  "Aitken Dr.",
  "Alice St.",
  "Arizona",
  "Boston St",
  "Broadway",
  "Brooklyn",
  "Butters Dr",
  "Byron Ave.",
  "California St",
  "Carmel",
  "Chabot Road",
  "Cleveland St.",
  "College Avenue",
  "Colton Blvd.",
  "Dakota St",
  "Dante Ave.",
  "Delaware St",
  "Detroit",
  "Dimond Ave.",
  "Doolittle Rd.",
  "Earhart Rd.",
  "Elmhurst",
  "Erie St",
  "Florida St",
  "Foothill Boulevard",
  "Genoa St",
  "Georgia",
  "Grand Avenue",
  "Harrison St.",
  "Harwood Ave.",
  "Havenscourt Blvd.",
  "Hegenberger",
  "High Street",
  "Hillegass Ave.",
  "Idaho St",
  "International Boulevard",
  "Jackson St.",
  "Jayne Ave.",
  "Jefferson St.",
  "John B. Williams Freeway",
  "Julia St.",
  "Kansas St",
  "Kirkham St.",
  "Lake Merritt Boulevard",
  "Lakeshore Avenue",
  "Leimert Blvd & Place",
  "Lincoln Ave.",
  "Logan Street",
  "Longfellow Ave.",
  "MacArthur Boulevard",
  "Madison St.",
  "Mandela Parkway",
  "Market Street",
  "Martin Luther King Jr. Way",
  "McClure St.",
  "McKinley Ave.",
  "Merritt Ave.",
  "Montana St",
  "Monterey Blvd",
  "Moss Ave",
  "Mott Place",
  "Negawatt Alley",
  "Nimitz Freeway",
  "Peralta",
  "Perkins St.",
  "Rhoda Ave.",
  "Rishell Dr.",
  "Rumford Freeway",
  "San Leandro Blvd",
  "San Pablo Avenue",
  "Scout Rd.",
  "Shafter Ave.",
  "Shattuck Ave.",
  "Shorey St.",
  "Skyline Boulevard",
  "Snell St",
  "Stanford",
  "Streets",
  "Telegraph Avenue",
  "Texas St",
  "Vicente Way",
  "Voltaire Ave.",
  "Washington St.",
  "Waterhouse Rd.",
  "Wisconsin St",
  "Yosemite"
]


# cluster addresses
17.times do

  location = nil
  count = 0
  until location != nil
    street_num = 300 + rand(4500)
    street_address = "#{street_num} #{oakland_st_name.sample}"
    puts "#{count}: #{street_address}"
    location = Geocoder.search(street_address).first
    count += 1
  end

  pr = Project.create(
    sun_number: 62 + rand(37),
    mo_elec_bill: 30 + rand(150),
    zillow_estimate: 200_000 + rand(3_000_000),
    address: location.formatted_address,
    lat: location.latitude,
    long: location.longitude
  )

  us = User.create(
    email: Faker::Internet.email,
    address: location.formatted_address,
    lat: location.latitude,
    lng: location.longitude,
    category: 4,
    price_paid: 15_000 + rand(14_000)
  )

  us.projects << pr # associate the new project with the new user
end

# cluster addresses
32.times do

  location = nil
  count = 0
  until location != nil
    street_address = Faker::Address.street_address
    location = Geocoder.search(street_address).first
    puts "#{count}"
    count += 1
  end

  pr = Project.create(
    sun_number: 62 + rand(37),
    mo_elec_bill: 30 + rand(150),
    zillow_estimate: 200_000 + rand(3_000_000),
    address: location.formatted_address,
    lat: location.latitude,
    long: location.longitude
  )

  us = User.create(
    email: Faker::Internet.email,
    address: location.formatted_address,
    lat: location.latitude,
    lng: location.longitude,
    category: 4,
    price_paid: 15_000 + rand(14_000)
  )

  us.projects << pr # associate the new project with the new user
end


6.times do
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
