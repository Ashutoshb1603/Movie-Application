class MovieLanguage < ApplicationRecord
    belongs_to :Language
    belongs_to :movie
    belongs_to :language_role
end
