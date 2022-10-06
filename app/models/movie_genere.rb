class MovieGenere < ApplicationRecord
  belongs_to :genere
  belongs_to :movie
end
