require 'rails_helper'

RSpec.describe Exercise, :type => :model do 
    it "must have a name" do  
        exercise = Exercise.new(name: nil)
        expect(exercise).to_not be_valid
    end 

    it "must have a number of reps" do 
        exercise = Exercise.new(reps: nil)
        expect(exercise).to_not be_valid
    end 

    it "reps must be an integer" do 
        exercise = Exercise.new(name: "squats", reps: "10")
        if exercise.reps.class != Integer
            expect(exercise).to_not be_valid
        end 
    end 

    describe 'associations' do 
        it { should belong_to(:patient)}
    end 
end 