class Bottle < ActiveRecord::Base
    belongs_to :distillery
    has_one :region, through: :distillery
end