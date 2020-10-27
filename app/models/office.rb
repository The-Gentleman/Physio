class Office < ApplicationRecord
  has_many :patients
  has_many :users, through: :patients
  validates :state, presence: true, uniqueness: true
  validates :city, presence: true, uniqueness: true

  scope :most_frequented_office, -> {Office.joins(:patients).group("offices.id").order("count(offices.id) DESC").limit(1)}
  scope :alpha, -> {order 'offices.state ASC'}
 end
