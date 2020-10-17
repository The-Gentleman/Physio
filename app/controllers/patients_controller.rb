class PatientsController < ApplicationController

    def new 
        @patient = Patient.new
    end 

    # I want the user to be able to see the patients associated with them
    def show 
        @patients = current_user.patients
    end 
end
