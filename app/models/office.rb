class Office < ApplicationRecord
  has_many :patients
  has_many :users, through: :patients
  validates :state, presence: true, uniqueness: true
  validates :city, presence: true, uniqueness: true

  scope :most_frequented_office, -> {Office.joins(:patients).group("offices.id").order("count(offices.id) DESC").limit(1)}
  scope :alpha, -> {order 'offices.state ASC'}
  # scope method where id =

  # search feature where user can a patient, they can get the office location.
  # to create a search fucntion, creat form tag
  # write a scope method for the desired behavior. 
  # write conditional checking if the params from the search made it to the controller.
  # create a post method?
  # create a route 
 end
