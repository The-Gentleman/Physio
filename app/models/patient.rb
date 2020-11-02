class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  has_many :exercises
  validates :name, presence: true, uniqueness: true
  validates :diagnosis, presence: true

  # scope method where id =
  scope :patient_search -> {}
  # search feature where user can a patient, they can get the office location.

  # to create a search fucntion, creat form tag[x]
  # write conditional checking if the params from the search made it to the controller.[x]
  # write a scope method for the desired behavior. 
  # create a route 


end
