class MovieCrew < ApplicationRecord
    belongs_to :movie
    belongs_to :Department
    belongs_to :Person

end
