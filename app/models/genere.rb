class Genere < ApplicationRecord
    has_many :movie_generes
    has_many :movies ,through: :movie_generes
end
