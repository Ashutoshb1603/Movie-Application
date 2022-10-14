class Person < ApplicationRecord
    has_many :movie_casts
    has_many :movies , through: :movie_cast
    has_many :movie_crews
    has_many :movies , through: :movie_crew

end
