class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  has_one :exercise
  validates :name, presence: true, uniqueness: true
  validates :diagnosis, presence: true
end
