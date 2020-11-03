class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  has_many :exercises
  validates :name, presence: true, uniqueness: true
  validates :diagnosis, presence: true

  scope :patient_search, -> (patient) { where("LOWER(name) = ?", patient)}

  # def self.patient_search(patient)
  #     where("LOWER(name) = ?", patient) 
  # end 


  # search feature where user can a patient, they can get the office location.

  # to create a search fucntion, creat form tag[x]
  # write conditional checking if the params from the search made it to the controller.[x]
  # write a scope method for the desired behavior.[x]
  # create a route 


end
