class Region < ActiveRecord::Base
    has_many :distilleries
    has_many :bottles, through: :distilleries

    def self.most_distilleries
        self.all.max_by{|region| region.distilleries.count}
    end
end