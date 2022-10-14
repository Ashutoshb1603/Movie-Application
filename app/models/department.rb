class Department < ApplicationRecord
    has_many :movie_crews
    has_many :movies , through: :movie_crew
end
