class MovieGenere < ApplicationRecord
  belongs_to :genere
  belongs_to :movie

  def generes_attributes=(hash)
   
    self.genere = Genere.find_or_create_by(hash)

  end
end
