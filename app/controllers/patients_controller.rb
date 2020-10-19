class PatientsController < ApplicationController
    
    def new 
        if params[:office_id] && office = Office.find_by_id(params[:office_id])
            @patient = office.patients.build
        else 
            @patient = Patient.new
        end 
    end 
    
    def create 
        @patient = Patient.new(patient_params)
        if @patient.save
            redirect_to patient_path(@patient)
        else 
            render :new 
        end 
    end 
    
    def index 
        binding.pry
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
        params.require(:patient).permit(:name, :diagnosis, :exercise, :user_id, :office_id)
    end 
end
