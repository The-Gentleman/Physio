class Office < ApplicationRecord
    has_many :patients
    has_many :users, through: :patients
    validates :state, presence: true, uniqueness: true
    validates :city, presence: true, uniqueness: true
    # scope method: Which office(s) has the most patients?
    # query the office table to find which office 
    # has the most patient ids
    # binding.pry
   scope :most_frequented_office, -> {}
   scope :alpha, -> {order 'offices.state ASC'}
   
 end
