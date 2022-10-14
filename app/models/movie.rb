class Movie < ApplicationRecord
   
    # after_create :movie_generes_attributes
    has_one_attached :image
    has_many :production_countries
    has_many :countries , through: :production_countries

    has_many :movie_languages
    has_many :languages ,through: :movie_languages
    has_many :language_roles ,through: :movie_languages

    has_many :movie_generes
    has_many :generes ,through: :movie_generes

    has_many :movie_keywords
    has_many :keywords ,through: :movie_keywords    

    has_many :production_companies
    has_many :movie_companies, through: :production_companies

    has_many :movie_casts
    has_many :genders ,through: :movie_casts

    has_many :movie_crews
    has_many :departments , through: :movie_crews

    has_many :movie_casts
    has_many :people , through: :movie_casts
    has_many :movie_crews
    has_many :people , through: :movie_crews



    validates :title, presence: true
    validates :budget, presence: true
    accepts_nested_attributes_for :generes
    paginates_per 10


    def movie_generes_attributes
    
        array.each do|item|
            movie_generes.build(item)
        end
    end
    
end



