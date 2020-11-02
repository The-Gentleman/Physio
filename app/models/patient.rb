class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  has_many :exercises
  validates :name, presence: true, uniqueness: true
  validates :diagnosis, presence: true

  # scope :patient_search, -> (patient) { where("id = ?", patient.id)}

  def self.patient_search(patient)
    where("LOWER(name) = ?", patient) 
  end 
  # binding.pry
  # Patient.find(Patient.patient_search("Robert").map{|patient| patient.id})
  # search feature where user can a patient, they can get the office location.

  # to create a search fucntion, creat form tag[x]
  # write conditional checking if the params from the search made it to the controller.[x]
  # write a scope method for the desired behavior. 
  # create a route 


end
