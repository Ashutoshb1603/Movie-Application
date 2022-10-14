class MovieCast < ApplicationRecord
    belongs_to :gender
    belongs_to :movie
    belongs_to :Person
end
