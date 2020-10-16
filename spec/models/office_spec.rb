require 'rails_helper'

RSpec.describe Office, :type => :model do 
    it "must have a location" do  
        office = Office.new(name: nil)
        expect(office).to_not be_valid
    end 


    describe 'associations' do 
        it { should has_many(:patients)}
    end 
end 