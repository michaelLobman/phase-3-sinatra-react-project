class Region < ActiveRecord::Base
    has_many :distilleries
    has_many :bottles, through: :distilleries
end