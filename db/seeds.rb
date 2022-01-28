puts "🌱 Seeding with the water of the gods..."
Region.create(name: "Campbeltown", img_url: "https://kintyreexpress.com/wp-content/uploads/2020/02/Campbeltown-for-KE-website-scaled.jpg")
Region.create(name: "Highland", img_url: "https://deih43ym53wif.cloudfront.net/glenfinnan-monument-and-loch-shiel-highland-scotland-uk_697ab00b2c.jpeg")
Region.create(name: "Islay", img_url: "http://www.visitscotland.com/cms-images/destinations/islay/machir-bay?view=Standard")
Region.create(name: "Lowland", img_url: "https://www.visitscotland.com/blog/wp-content/uploads/2019/08/south_of_scotland_60-1200x800.jpg")
Region.create(name: "Speyside", img_url: "http://www.visitscotland.com/cms-images/travel/strathisla-distillery-ext")

Distillery.create(name: "Glen Scotia", region_id: 1, year_established: 1832)
Distillery.create(name:"Oban", region_id: 2, year_established: 1794)
Distillery.create(name: "Lagavulin", region_id: 3, year_established: 1816)
Distillery.create(name: "Glenkinchie", region_id: 4, year_established: 1837)
Distillery.create(name: "Aberlour", region_id: 5, year_established: 1879)
Distillery.create(name: "Macallan", region_id: 5, year_established: 1824)

Bottle.create(name: "Victoriana", aged_in_years: nil, distillery_id: 1)
Bottle.create(name: "Glen Scotia 15 Year Old Whisky", aged_in_years: 15, distillery_id: 1)

Bottle.create(name: "Oban 14 Years Old", aged_in_years: 14, distillery_id: 2)
Bottle.create(name: "Oban 18 Years Old", aged_in_years: 18, distillery_id: 2)

Bottle.create(name: "Lagavulin 16 Year Old", aged_in_years: 16, distillery_id: 3)
Bottle.create(name: "Lagavulin 8 Year Old", aged_in_years: 8, distillery_id: 3)

Bottle.create(name: "Glenkinchie 12 Year Old", aged_in_years: 12, distillery_id: 4)

Bottle.create(name: "12 Year Old Scotch Whisky", aged_in_years: 12, distillery_id: 5)
Bottle.create(name: "A’bunadh Scotch Whisky", aged_in_years: nil, distillery_id: 5)
Bottle.create(name: "16 Year Old Scotch Whisky", aged_in_years: 16, distillery_id: 5)


Bottle.create(name: "Double Cask 12 Years Old", aged_in_years: 12, distillery_id: 6)
Bottle.create(name: "Double Cask Gold", aged_in_years: nil, distillery_id: 6)
Bottle.create(name: "Double Cask 18 Years Old", aged_in_years: 18, distillery_id: 6)
Bottle.create(name: "Sherry Oak 12 Years Old", aged_in_years: 12, distillery_id: 6)
Bottle.create(name: "The Macallan Ruby", aged_in_years: nil, distillery_id: 6)







puts "✅ Done seeding! Start drinking!"
