class User < ApplicationRecord
    has_many :patients
    has_many :offices, through: :patients 
    has_secure_password
    validates :username, presence: true, uniqueness: true
end
