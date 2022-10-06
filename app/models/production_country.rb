class ProductionCountry < ApplicationRecord
    belongs_to :movie
    belongs_to :country

end
