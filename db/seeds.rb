puts "🌱 Seeding with the water of the gods..."
Region.create(name: "Cambeltown")
Region.create(name: "Highland")
Region.create(name: "Islay")
Region.create(name: "Lowland")
Region.create(name: "Speyside")

Distillery.create(name: "Macallan", region_id: 5, year_established: 1824, currently_open: true)
Distillery.create(name: "Lagavulin", region_id: 3, year_established: 1816, currently_open: true)

Bottle.create(name: "Double Cask 12 Years Old", aged_in_years: 12, in_production: true, distillery_id: 1)
Bottle.create(name: "Double Cask Gold", aged_in_years: nil, in_production: true, distillery_id: 1)
Bottle.create(name: "Double Cask 18 Years Old", aged_in_years: 18, in_production: true, distillery_id: 1)
Bottle.create(name: "Sherry Oak 12 Years Old", aged_in_years: 12, in_production: true, distillery_id: 1)
Bottle.create(name: "The Macallan Ruby", aged_in_years: nil, in_production: false, distillery_id: 1)


Bottle.create(name: "Lagavulin 16 Year Old", aged_in_years: 16, in_production: true, distillery_id: 2)
Bottle.create(name: "Lagavulin 8 Year Old", aged_in_years: 8, in_production: true, distillery_id: 2)




puts "✅ Done seeding! Start drinking!"
