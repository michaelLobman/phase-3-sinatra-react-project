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

  get "/all_bottles_by_region" do
    Bottle.all.to_json
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


