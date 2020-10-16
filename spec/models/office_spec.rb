require 'rails_helper'

RSpec.describe Office, :type => :model do 

    describe 'validations' do 
        it { should validate_presence_of(:location) }
    end 
    
    describe 'associations' do 
        it { should have_many(:patients)}
        it { should have_many(:users).through(:patients) }
    end 

end 