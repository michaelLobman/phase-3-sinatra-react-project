require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/all" do
    regions = Region.all
    regions.to_json(include: { distilleries: { include: :bottles } })
  end

  get "/bottles/age" do
    Bottle.all.order(:aged_in_years).to_json
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

  # get bottles by distilleries from specific region
  get "/regions/:id/distilleries/bottles" do
    region = Region.find(params[:id])
    region.to_json(include: { distilleries: { include: :bottles } })
  end

  # region with most distilleries

  get "/regions/most_distilleries" do
    Region.most_distilleries.to_json(include: :distilleries)
  end

  # region with most distilleries (include corresponding bottles)

  get "/regions/most_distilleries/bottles" do
    Region.most_distilleries.to_json(include: { distilleries: { include: :bottles } })
  end

  get "/distilleries" do
    distilleries = Distillery.all
    distilleries.to_json
  end

  # get distilleries with corresponding bottles

  get "/distilleries/bottles" do
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
    Distillery.newest.to_json(include: :bottles)
  end

  get "/distilleries/:id/bottles" do
    distillery = Distillery.find(params[:id])
    distillery.to_json(include: :bottles)
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

  # patch "/bottles/:id" do
  #   bottle = Bottle.find(params[:id])
  #   if !params[:name]
  #     name = bottle.name
  #   else 
  #     name = params[:name]
  #   end

  #   if params[:age] == 0
  #     age = nil
  #   elsif !params[:age]
  #     age = bottle.aged_in_years
  #   else
  #     age = params[:age]
  #   end

  #   bottle.update(
  #     name: name,
  #     aged_in_years: age
  #   )
  #   bottle.to_json
  # end

end


