class Region < ActiveRecord::Base
    has_many :distilleries
    has_many :bottles, through: :distilleries

    # Think this works... reseed with more distilleries in another one to confirm

    def self.most_distilleries
        self.all.max_by{|region| region.distilleries.count}
    end
end