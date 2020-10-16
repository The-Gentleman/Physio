require 'rails_helper'

RSpec.describe User, :type => :model do 
    describe 'associations' do 
        it { should have_many(:offices)}
        it { should have_many(:patients)}
        it { should have_many(:offices).through(:patients) }
    end 
end 