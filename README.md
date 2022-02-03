# Water of Life - A Scotch Whisky API

An API for those who spell whisky without an "e".


## Description

Water of Life is a RESTful API that utilizes Sinatra and Active Record to organize, access, and persist all of your favorite scotches. The database consists of Regions, Distilleries, and Bottles. 

Let's dive in.

## Usage

### Get all scotches
#### Endpoint
`GET /all/`
#### Response
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

