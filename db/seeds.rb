require 'faker'

company = Company.create(
  name: 'Pied Piper',
  description: 'Compression Algorithms',
  budget: 10000000,
  raised: 5000000,
  timeline: 2018-03-25
)

investor = VentureCapitalist.create(
  name: 'Gavin Belson',
  affiliation: 'Individual',
  website: 'https://hbo.com',
  contact: 'emailio-addresstevez@email.com',
  check_size: 20000000,
  investments_per_year: 5,
  status: 'Contacted',
  location: 'Silcon Valley',
  potential: 'low',
  interests: 'Money',
)

note = Note.create(
  description: 'References animals too much',
)

notable_investment = NotableInvestment.create(
  company: 'Hooli',
  amount: 500000000
)

investor.notes << note
investor.notable_investments << notable_investment
company.venture_capitalists << investor

10.times do
  Company.create(
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase,
    budget: rand(2000000..100000000),
    raised: rand(0..1000000),
    timeline: Faker::Date.between(1.year.from_now, 2.years.from_now)
  )
end

500.times do
  venture_capitalist = VentureCapitalist.create(
    name: Faker::Name.name,
    affiliation: ['Individual', 'Group', 'Venture Firm'].sample,
    website: Faker::Internet.url,
    contact: Faker::Internet.email,
    check_size: rand(2000000..100000000),
    investments_per_year: rand(5..100),
    status: ['Contacted', 'Researched', 'Acquired', 'Discussing Terms'].sample,
    location: Faker::Address.city,
    potential: ['low', 'medium', 'high'].sample,
    interests: Faker::Company.bs,
  )

  note = Note.create(
    description: Faker::Lorem.sentence,
  )

  notable_investment = NotableInvestment.create(
    company: Faker::Company.name,
    amount: rand(2000000..100000000)
  )

  venture_capitalist.notes << note
  venture_capitalist.notable_investments << notable_investment
  Company.find(rand(1..11)).venture_capitalists << venture_capitalist
end
