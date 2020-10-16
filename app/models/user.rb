class User < ApplicationRecord
    has_many :patients
    has_many :offices, through: :patients 
end
