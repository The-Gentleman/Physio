require 'rails_helper'

RSpec.describe User, :type => :model do 
    it "must have a username" do 
        user = User.new(username: nil)
        expect(user).to_not be_valid
    end 

    it "must have a password" do 
        user = User.new(password_digest: nil)
        expect(user).to_not be_valid
    end 

    describe 'associations' do 
        it { should have_many(:offices)}
        it { should have_many(:patients)}
        it { should have_many(:offices).through(:patients) }
    end 
end 