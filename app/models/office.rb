class Office < ApplicationRecord
    has_many :patients, :dependent => :destroy
    has_many :users, through: :patients
    validates :state, presence: true, uniqueness: true
    validates :city, presence: true, uniqueness: true
end
