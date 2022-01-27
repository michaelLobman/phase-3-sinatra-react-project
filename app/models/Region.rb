class Region < ActiveRecord::Base
    has_many :distilleries
    has_many :bottles, through: :distilleries

    # where i left off... Tough one

    def self.most_distilleries

    end
end