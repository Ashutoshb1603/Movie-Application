class Movie < ApplicationRecord
    has_many :production_countries
    has_many :countries , :through=> :production_countries

    has_many :movie_languages
    has_many :languages ,:through=>:movie_language
    has_many :language_roles ,:through=>:movie_language

    has_many :movie_generes
    has_many :generes ,:through=>:movie_genere

    has_many :movie_keywords
    has_many :keywords ,:through=>:movie_keyword

    has_many :production_companies
    has_many :movie_companies, :through=>:production_company
end
