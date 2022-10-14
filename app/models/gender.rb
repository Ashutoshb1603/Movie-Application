class Gender < ApplicationRecord
    has_many :movie_casts
    has_many :movies ,through: :movie_cast
end
