class PatientsController < ApplicationController
    def index 
    end 

    def new 
        if params[:office_id] && office = Office.find_by_id(params[:office_id])
            @patient = office.patients.build
        else 
            @patient = Patient.new
        end 
    end 

    def create 
        @patient = Patient.new(patient_params)
        # binding.pry
        if @patient.save
            redirect_to patient_path(@patient)
        else 
            render :new
        end 
    end 

    private
    def patient_params
        params.require(:patient).permit(:name, :diagnosis, :user_id, :office_id)
    end 
end
