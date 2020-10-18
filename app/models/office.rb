class Office < ApplicationRecord
    has_many :patients
    has_many :users, through: :patients
    validates :state, presence: true, uniqueness: true
    validates :city, presence: true, uniqueness: true

    # scope method: Which office(s) has the most patients?
end
