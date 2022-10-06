Class MovieCompany < ApplicationRecord
    belongs_to :movie
    belongs_to :production_company
    
end
