class Country < ApplicationRecord
    has_many :production_countries
    has_many :movies , through: :production_country
    
end
