class PatientsController < ApplicationController

    def new 
        @patient = Patient.new
    end 

    def index 
        @patients = current_user.patients
    end 

    def show 
        @patient = Patient.find_by(id: params[:id])
    end 


    private
    def patient_params
        params.require[:patient].permit(:name, :diagnosis, :exercise, :user_id, patient_id)
    end 
end
