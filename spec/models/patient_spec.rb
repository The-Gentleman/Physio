require 'rails_helper'

RSpec.describe Patient, :type => :model do 
    describe 'associations' do 
        it { should have_many(:exercises)}
        it { should belong_to(:user)}
        it { should belong_to(:office)}
    end 

    describe 'validations' do 
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:diagnosis) }
    end 

end 