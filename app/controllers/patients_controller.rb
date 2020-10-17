class PatientsController < ApplicationController

    def new #needs to be nested
    end 
    
    def create #needs to be nested
    end 
    
    def index #needs to be nested
        if params[:office_id] && office = Office.find_by_id(params[:office_id])
            @patients = office.patients
        else 
            @patients = current_user.patients
        end 
    end 
    
    def show 
        @patient = Patient.find_by(id: params[:id])
    end 



    private
    def patient_params
        params.require(:patient).permit(:name, :diagnosis, :user_id, :office_id)
    end 
end
