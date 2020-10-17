class PatientsController < ApplicationController

    def new #needs to be nested
        @patient = Patient.new
    end 
    
    def create #needs to be nested
    end 
    
    def index #needs to be nested
        @patients = current_user.patients
    end 
    
    def show 
        @patient = Patient.find_by(id: params[:id])
    end 



    private
    def patient_params
        params.require(:patient).permit(:name, :diagnosis, :user_id, :office_id)
    end 
end
