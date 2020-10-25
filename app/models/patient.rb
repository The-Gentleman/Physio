class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  has_many :exercise
  validates :name, presence: true, uniqueness: true
  validates :diagnosis, presence: true
end
