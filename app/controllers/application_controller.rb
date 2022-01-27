class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    macallan = Distillery.find(1)
    bottle_arr = macallan.bottles.map{|bottle| bottle.name }
    bottle_arr.to_json
  end

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

  # get oldest bottles




  # get "/regions/bottles" do
  #   regions = Region.all
  #   regions.to_json(only: [:name], include: { 
  #     distilleries: { only: [:name], include: {
  #     bottles: { only: [:name, :aged_in_years] }
  #     } }
  #   })
  # end

  get "/regions/bottles" do
    regions = Region.all
    regions.to_json(include: { distilleries: { include: :bottles } })
  end

  # get bottles by distilleries from specific region
  get "/regions/:id/distilleries" do
    region = Region.find(params[:id])
    region.to_json(include: { distilleries: { include: :bottles } })
  end

  # get distilleries with corresponding bottles

  get "/distilleries" do
    distilleries = Distillery.all
    distilleries.to_json(include: :bottles)
  end

  # get specific distillery with corresponding bottles

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

  

  # get "/all_bottles_by_region" do
  #   regions = Region.all

  #   bottles_by_region = Region.all.each_with_object({}) do |region, hash|
  #     distilleries = region.distilleries
  #     hash[region.name] = distilleries.each_with_object({}) do |distillery, nested_hash|
  #       nested_hash[distillery.name] = distillery.bottles.order(:aged_in_years).map{|bottle| bottle.name}
  #     end
  #   end

  #   bottles_by_region.to_json

  # end

  # get "/all_bottles_by_region" do
  #   regions = Region.all
  #   for_json = regions.map do |region|
  #     distilleries = region.distilleries
  #     distilleries.map do |distillery|
  #       hash["#{region}"]["#{distillery}"]
  #       distillery.bottles.order(:aged_in_years).map{|bottle| bottle.name}
  #     end
  #   end
  #   for_json.to_json
  # end

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
    region = params[:region]

    distillery_name = titleize(params[:distillery])
    existing_distillery = Distillery.find_by(name: distillery_name)

    unless existing_distillery
      binding.pry
    end

    new_bottle = Bottle.create(name: bottle_name, aged_in_years: bottle_age)
    new_bottle.distillery = existing_distillery

    new_bottle.to_json
  end
end


