puts "🌱 Seeding with the water of the gods..."
Region.create(
    name: "Campbeltown", 
    img_url: "https://kintyreexpress.com/wp-content/uploads/2020/02/Campbeltown-for-KE-website-scaled.jpg",
    description: "Campbeltown's coastal location helps to shape its whiskies' characteristics and the malts produced here are fiercely enduring and distinctive. You can detect notes of sea salt on the nose and a briny taste on the palate, while smoke, fruit, vanilla and toffee flavours are also embraced in the various malts of Campbeltown."
)
Region.create(
    name: "Highland", 
    img_url: "https://deih43ym53wif.cloudfront.net/glenfinnan-monument-and-loch-shiel-highland-scotland-uk_697ab00b2c.jpeg",
    description: "The Scotch produced in the untamed wilds of the Highlands is varied and unique from distillery to distillery thanks to the ever-changing landscape of coastline, moor and mountain and variable weather conditions. While some are peated, heavily sherried or have a salty tang from the sea, others are fresh, light and grassy."
)
Region.create(
    name: "Islay", 
    img_url: "http://www.visitscotland.com/cms-images/destinations/islay/machir-bay?view=Standard",
    description: "The island is covered in peat which is exposed to rain and sea spray. Harvested and used to malt the barley used in distilling, the peat and the maritime climate gives Islay whiskies their characteristic pungent peaty, smoky and oily flavours, with just a hint of salty sea air and seaweed. The island is probably most famous for the 'big smokes' of Laphroaig, Lagavulin and Ardbeg."
)
Region.create(
    name: "Lowland", 
    img_url: "https://www.visitscotland.com/blog/wp-content/uploads/2019/08/south_of_scotland_60-1200x800.jpg",
    description:"Whiskies from this region are generally considered as the most light-bodied of the single malts. Often triple distilled, these malts are unpeated and lighter in nature, with a gentle, elegant palate, reminiscent of sweetness, which makes them easy to drink, especially for those who are new to single malt whisky. When you enjoy Lowland whiskies, look out for malty, zesty flavours with slightly fruity, citrusy and sometimes floral notes, as well as honeysuckle, cream, ginger, toffee, toast and cinnamon."
)
Region.create(
    name: "Speyside", 
    img_url: "http://www.visitscotland.com/cms-images/travel/strathisla-distillery-ext",
    description: "Speyside whiskies are usually lighter and sweeter than other Scotch single malts. These malts are noted in general for their elegance and complexity, sometimes with a refined smokiness but more often a fruitiness ranging from ripe pears to sultanas. It's the pastoral, secluded glens in the area, along with the crystal-clear waters of the River Spey and other local rivers and the warmer climate that combine to produce smooth, complex whiskies with sweet, caramel and fruity notes."
)

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
