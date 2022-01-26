puts "🌱 Seeding with the water of the gods..."
Region.create(name: "Campbeltown")
Region.create(name: "Highland")
Region.create(name: "Islay")
Region.create(name: "Lowland")
Region.create(name: "Speyside")

Distillery.create(name: "Glen Scotia", region_id: 1, year_established: 1832, currently_open: true)
Distillery.create(name:"Oban", region_id: 2, year_established: 1794, currently_open: true)
Distillery.create(name: "Lagavulin", region_id: 3, year_established: 1816, currently_open: true)
Distillery.create(name: "Glenkinchie", region_id: 4, year_established: 1837, currently_open: true)
Distillery.create(name: "Aberlour", region_id: 5, year_established: 1879, currently_open: true)
Distillery.create(name: "Macallan", region_id: 5, year_established: 1824, currently_open: true)

Bottle.create(name: "Victoriana", aged_in_years: nil, in_production: true, distillery_id: 1)
Bottle.create(name: "Glen Scotia 15 Year Old Whisky", aged_in_years: 15, in_production: true, distillery_id: 1)

Bottle.create(name: "Oban 14 Years Old", aged_in_years: 14, in_production: true, distillery_id: 2)
Bottle.create(name: "Oban 18 Years Old", aged_in_years: 18, in_production: true, distillery_id: 2)

Bottle.create(name: "Lagavulin 16 Year Old", aged_in_years: 16, in_production: true, distillery_id: 3)
Bottle.create(name: "Lagavulin 8 Year Old", aged_in_years: 8, in_production: true, distillery_id: 3)

Bottle.create(name: "Glenkinchie 12 Year Old", aged_in_years: 12, in_production: true, distillery_id: 4)

Bottle.create(name: "12 Year Old Scotch Whisky", aged_in_years: 12, in_production: true, distillery_id: 5)
Bottle.create(name: "A’bunadh Scotch Whisky", aged_in_years: nil, in_production: true, distillery_id: 5)
Bottle.create(name: "16 Year Old Scotch Whisky", aged_in_years: 16, in_production: true, distillery_id: 5)


Bottle.create(name: "Double Cask 12 Years Old", aged_in_years: 12, in_production: true, distillery_id: 6)
Bottle.create(name: "Double Cask Gold", aged_in_years: nil, in_production: true, distillery_id: 6)
Bottle.create(name: "Double Cask 18 Years Old", aged_in_years: 18, in_production: true, distillery_id: 6)
Bottle.create(name: "Sherry Oak 12 Years Old", aged_in_years: 12, in_production: true, distillery_id: 6)
Bottle.create(name: "The Macallan Ruby", aged_in_years: nil, in_production: false, distillery_id: 6)







puts "✅ Done seeding! Start drinking!"
