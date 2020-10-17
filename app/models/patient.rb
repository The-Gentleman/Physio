class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :office
  validates :name, presence: true
  validates :diagnosis, presence: true
  validates :exercise, presence: true
end
