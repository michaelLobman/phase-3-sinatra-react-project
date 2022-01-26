class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    macallan = Distillery.find(1)
    bottle_arr = macallan.bottles.map{|bottle| bottle.name }
    bottle_arr.to_json
  end

  get "/bottles" do
    Bottle.all.order(:aged_in_years).to_json(only: [:name, :aged_in_years])    
  end

  get "/distilleries/:id/bottles" do 
    distillery = Distillery.find(params[:id])
    distillery.bottles.order(:aged_in_years).to_json(only: [:name, :aged_in_years])
  end

end


