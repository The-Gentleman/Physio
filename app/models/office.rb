class Office < ApplicationRecord
    has_many :patients
has_many :users, through: :patients
    validates :state, presence: true, uniqueness: true
    validates :city, presence: true, uniqueness: true
    # scope method: Which office(s) has the most patients?
    # binding.pry
    # scope :most_used_offices, -> {.order(patient_id: :desc).limit(3)}
   
   
   
    # scope :most_frequent_patient, -> {Exercise.joins(:patient).group(:patient_id).order("count(patient_id) desc").limit(1)}
end
