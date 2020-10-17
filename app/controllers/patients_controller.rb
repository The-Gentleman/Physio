class PatientsController < ApplicationController

    def new #nested
        @patient = Patient.new
    end 
    
    def create #nested
    end 
    
    def index #nested
        @patients = current_user.patients
    end 

    def show 
        @patient = Patient.find_by(id: params[:id])
    end 



    private
    def patient_params
        params.require(:patient).permit(:name, :diagnosis, :exercise, :user_id)
    end 
end
