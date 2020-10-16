class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  has_many :exercises
  validates :diagnosis, presence: true
end
