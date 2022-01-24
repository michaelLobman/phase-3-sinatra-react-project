class Distillery < ActiveRecord::Base
    belongs_to :region
    has_many :bottles
end