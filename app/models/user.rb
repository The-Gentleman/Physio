class User < ApplicationRecord
    has_many :patients
    has_many :offices, through: :patients 
    has_secure_password
ç
    def self.from_google(auth)
        self.find_or_create_by(username: auth[:info][:name], uid: auth[:uid]) do |user|
            user.username = auth[:info][:name]
            user.uid = auth[:uid]
            user.password = SecureRandom.hex(15)
        end 
    end
    
end
