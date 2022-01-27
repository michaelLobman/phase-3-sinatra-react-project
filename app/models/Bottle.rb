class Bottle < ActiveRecord::Base
    belongs_to :distillery
    has_one :region, through: :distillery

    def self.oldest
       max_age = Bottle.maximum(:aged_in_years)
       Bottle.all.where(aged_in_years: max_age)
    end
end