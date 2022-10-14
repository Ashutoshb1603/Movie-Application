class ProductionCompany < ApplicationRecord

     has_many :movie_companies
     has_many :movies ,through: :movie_company

end