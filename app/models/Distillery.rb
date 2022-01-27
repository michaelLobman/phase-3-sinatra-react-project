class Distillery < ActiveRecord::Base
    belongs_to :region
    has_many :bottles

    def self.oldest
        Distillery.order(:year_established).first
    end

    def self.newest
        Distillery.order(:year_established).last
    end

    # def bottles_by_age
    #     self.bottles.map{|bottle| bottle.name}
    # end

end