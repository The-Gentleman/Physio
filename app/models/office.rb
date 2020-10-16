class Office < ApplicationRecord
    has_many :patients
    has_many :users, through: :patients 

end
