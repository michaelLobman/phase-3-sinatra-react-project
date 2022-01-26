class Distillery < ActiveRecord::Base
    belongs_to :region
    has_many :bottles

    def distillery_bottles
        self.bottles.map{|bottle| bottle.name}
    end

    # macallan = Distillery.find(1)
    # bottle_arr = macallan.bottles.map{|bottle| bottle.name }
    # bottle_arr.to_json
end