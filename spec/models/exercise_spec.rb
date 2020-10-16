require 'rails_helper'

RSpec.describe Exercise, :type => :model do 
    describe 'associations' do 
        it { should belong_to(:patient)}
    end 

    describe 'validations' do 
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:reps) }
    end 

end 