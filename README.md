# Water of Life - A Scotch Whisky API

An API for those who spell whisky without an "e".


## Description

Water of Life is a RESTful API that utilizes Sinatra and Active Record to organize, access, and persist all of your favorite scotches. The database consists of Regions, Distilleries, and Bottles. 

Let's dive in.

## Usage

### Get all scotches
#### Request:
`GET /all`
#### Response (excerpted):
```json
[
    {
        "id": 1,
        "name": "Campbeltown",
        "img_url": "https://kintyreexpress.com/wp-content/uploads/2020/02/Campbeltown-for-KE-website-scaled.jpg",
        "description": "Campbeltown's coastal location helps to shape its whiskies' characteristics and the malts produced here are fiercely enduring and distinctive. You can detect notes of sea salt on the nose and a briny taste on the palate, while smoke, fruit, vanilla and toffee flavours are also embraced in the various malts of Campbeltown.",
        "distilleries": [
            {
                "id": 1,
                "name": "Glen Scotia",
                "year_established": 1832,
                "region_id": 1,
                "bottles": [
                    {
                        "id": 1,
                        "name": "Victoriana",
                        "aged_in_years": null,
                        "distillery_id": 1
                    },
                    {
                        "id": 2,
                        "name": "Glen Scotia 15 Year Old Whisky",
                        "aged_in_years": 15,
                        "distillery_id": 1
                    }
                ]
            }
        ]  
    }
]
```
## Region endpoints
### Get all distilleries and bottles from specific region
#### Request:
`GET /regions/:id/distilleries/bottles`
#### Response:
```json
{
    "id": 5,
    "name": "Speyside",
    "img_url": "http://www.visitscotland.com/cms-images/travel/strathisla-distillery-ext",
    "description": "Speyside whiskies are usually lighter and sweeter than other Scotch single malts. These malts are noted in general for their elegance and complexity, sometimes with a refined smokiness but more often a fruitiness ranging from ripe pears to sultanas. It's the pastoral, secluded glens in the area, along with the crystal-clear waters of the River Spey and other local rivers and the warmer climate that combine to produce smooth, complex whiskies with sweet, caramel and fruity notes.",
    "distilleries": [
        {
            "id": 5,
            "name": "Aberlour",
            "year_established": 1879,
            "region_id": 5,
            "bottles": [
                {
                    "id": 8,
                    "name": "12 Year Old Scotch Whisky",
                    "aged_in_years": 12,
                    "distillery_id": 5
                },
                {
                    "id": 9,
                    "name": "A’bunadh Scotch Whisky",
                    "aged_in_years": null,
                    "distillery_id": 5
                },
                {
                    "id": 10,
                    "name": "16 Year Old Scotch Whisky",
                    "aged_in_years": 16,
                    "distillery_id": 5
                }
            ]
        },
        {
            "id": 6,
            "name": "Macallan",
            "year_established": 1824,
            "region_id": 5,
            "bottles": [
                {
                    "id": 11,
                    "name": "Double Cask 12 Years Old",
                    "aged_in_years": 12,
                    "distillery_id": 6
                },
                {
                    "id": 12,
                    "name": "Double Cask Gold",
                    "aged_in_years": null,
                    "distillery_id": 6
                },
                {
                    "id": 13,
                    "name": "Double Cask 18 Years Old",
                    "aged_in_years": 18,
                    "distillery_id": 6
                },
                {
                    "id": 14,
                    "name": "Sherry Oak 12 Years Old",
                    "aged_in_years": 12,
                    "distillery_id": 6
                },
                {
                    "id": 15,
                    "name": "The Macallan Ruby",
                    "aged_in_years": null,
                    "distillery_id": 6
                }
            ]
        },
        {
            "id": 8,
            "name": "The Balvenie",
            "year_established": 1892,
            "region_id": 5,
            "bottles": [
                {
                    "id": 19,
                    "name": "The Balvenie Doublewood 12",
                    "aged_in_years": 12,
                    "distillery_id": 8
                }
            ]
        }
    ]
}
```
### Get region with most distilleries
#### Request:
`GET /regions/most_distilleries`
#### Response:
```json
{
    "id": 5,
    "name": "Speyside",
    "img_url": "http://www.visitscotland.com/cms-images/travel/strathisla-distillery-ext",
    "description": "Speyside whiskies are usually lighter and sweeter than other Scotch single malts. These malts are noted in general for their elegance and complexity, sometimes with a refined smokiness but more often a fruitiness ranging from ripe pears to sultanas. It's the pastoral, secluded glens in the area, along with the crystal-clear waters of the River Spey and other local rivers and the warmer climate that combine to produce smooth, complex whiskies with sweet, caramel and fruity notes.",
    "distilleries": [
        {
            "id": 5,
            "name": "Aberlour",
            "year_established": 1879,
            "region_id": 5
        },
        {
            "id": 6,
            "name": "Macallan",
            "year_established": 1824,
            "region_id": 5
        },
        {
            "id": 8,
            "name": "The Balvenie",
            "year_established": 1892,
            "region_id": 5
        }
    ]
}
```
### Get region with most distilleries and their corresponding bottles
#### Request:
`GET /regions.most_distilleries/bottles`
#### Response:
```json 
{
    "id": 5,
    "name": "Speyside",
    "img_url": "http://www.visitscotland.com/cms-images/travel/strathisla-distillery-ext",
    "description": "Speyside whiskies are usually lighter and sweeter than other Scotch single malts. These malts are noted in general for their elegance and complexity, sometimes with a refined smokiness but more often a fruitiness ranging from ripe pears to sultanas. It's the pastoral, secluded glens in the area, along with the crystal-clear waters of the River Spey and other local rivers and the warmer climate that combine to produce smooth, complex whiskies with sweet, caramel and fruity notes.",
    "distilleries": [
        {
            "id": 5,
            "name": "Aberlour",
            "year_established": 1879,
            "region_id": 5,
            "bottles": [
                {
                    "id": 8,
                    "name": "12 Year Old Scotch Whisky",
                    "aged_in_years": 12,
                    "distillery_id": 5
                },
                {
                    "id": 9,
                    "name": "A’bunadh Scotch Whisky",
                    "aged_in_years": null,
                    "distillery_id": 5
                },
                {
                    "id": 10,
                    "name": "16 Year Old Scotch Whisky",
                    "aged_in_years": 16,
                    "distillery_id": 5
                }
            ]
        },
        {
            "id": 6,
            "name": "Macallan",
            "year_established": 1824,
            "region_id": 5,
            "bottles": [
                {
                    "id": 11,
                    "name": "Double Cask 12 Years Old",
                    "aged_in_years": 12,
                    "distillery_id": 6
                },
                {
                    "id": 12,
                    "name": "Double Cask Gold",
                    "aged_in_years": null,
                    "distillery_id": 6
                },
                {
                    "id": 13,
                    "name": "Double Cask 18 Years Old",
                    "aged_in_years": 18,
                    "distillery_id": 6
                },
                {
                    "id": 14,
                    "name": "Sherry Oak 12 Years Old",
                    "aged_in_years": 12,
                    "distillery_id": 6
                },
                {
                    "id": 15,
                    "name": "The Macallan Ruby",
                    "aged_in_years": null,
                    "distillery_id": 6
                }
            ]
        },
        {
            "id": 8,
            "name": "The Balvenie",
            "year_established": 1892,
            "region_id": 5,
            "bottles": [
                {
                    "id": 19,
                    "name": "The Balvenie Doublewood 12",
                    "aged_in_years": 12,
                    "distillery_id": 8
                }
            ]
        }
    ]
}
```
### Add new distillery
#### Request:
```
POST /distilleries
```
Raw JSON body:
```json
{
  "name": "Example Name",
  "year": "Example Year Established",
  "region": "Speyside"
}
```
#### Response:
```json
{
  "id": 20,
  "name": "Example Name",
  "year": "Example Year Established",
  "region_id": 5
}
```
### Get all bottles

###

  get "/bottles" do
    Bottle.all.order(:aged_in_years).to_json(only: [:name, :aged_in_years])    
  end

  get "/bottles/oldest" do
    Bottle.oldest.to_json(include: :distillery)
  end

  get "/bottles/:id" do
    bottle = Bottle.find(params[:id])
    bottle.to_json(include: { distillery: { include: :region } } )
  end

  delete "/bottles/:id" do
    bottle = Bottle.find(params[:id])
    bottle.destroy
    bottle.to_json(include: { distillery: { include: :region } })
  end

  # get distilleries with corresponding bottles

  get "/distilleries" do
    distilleries = Distillery.all
    distilleries.to_json(include: :bottles)
  end


  post "/distilleries" do
    name = params[:name]
    year_established = params[:year]

    region = params[:region]
    existing_region = Region.find_by(name: region)

    new_distillery = Distillery.create(name: name, year_established: year_established)
    new_distillery.region = existing_region
    new_distillery.save


    new_distillery.to_json

  end



  get "/distilleries/oldest" do
    Distillery.oldest.to_json
  end

  get "/distilleries/newest" do
    Distillery.newest.to_json
  end

  get "/distilleries/oldest/bottles" do
    Distillery.oldest.to_json(include: :bottles)
  end

  get "/distilleries/newest/bottles" do
    Distilelry.newes.to_json(include: :bottles)
  end

  get "/distilleries/:id/bottles" do
    distillery = Distillery.find(params[:id])
    distillery.to_json(include: :bottles)
  end

  get "/distilleries/:id/bottles" do 
    distillery = Distillery.find(params[:id])
    distillery.bottles.order(:aged_in_years).to_json(only: [:name, :aged_in_years])
  end

  post "/bottles" do
    def titleize(string)
      split = string.split
      title_cased = split.map do |word|
        letters = word.split("")
        letters[0] = letters[0].upcase
        letters.join
      end

      title_cased.join(" ")

    end

    bottle_name = titleize(params[:name])
    bottle_age = params[:age]

    distillery_name = titleize(params[:distillery])
    existing_distillery = Distillery.find_by(name: distillery_name)

    new_bottle = Bottle.create(name: bottle_name, aged_in_years: bottle_age)
    new_bottle.distillery = existing_distillery

    new_bottle.save

    new_bottle.to_json
  end

  patch "/bottles/:id" do
    bottle = Bottle.find(params[:id])
    if !params[:name]
      name = bottle.name
    else 
      name = params[:name]
    end

    if params[:age] == 0
      age = nil
    elsif !params[:age]
      age = bottle.aged_in_years
    else
      age = params[:age]
    end

    bottle.update(
      name: name,
      aged_in_years: age
    )
    bottle.to_json
  end

end





- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

