class PatientsController < ApplicationController
    before_action :find_patient, only: [:show]
    
    def index 
        if params[:office_id] && office = Office.find_by_id(params[:office_id])
            @patients = office.patients
        else 
            @patients = current_user.patients
        end 
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
        if @patient.save
            redirect_to patient_path(@patient)
        else 
            render :new
        end 
    end 

    def show 
        find_patient
        if @patient 
            render :show
        else 
            redirect_to select_path
        end 
    end 

    def edit 
        # @patient = Patient.find_by(id: params[:id])
        find_patient
        if @patient 
            render :edit
        else 
            redirect_to select_path
        end 
    end 

    def update
        # @patient = Patient.find_by(id: params[:id])
        # if @patient.update(patient_params)
        #     redirect_to patient_path(@patient)
        # else
        #     render :edit
        # end
    end 

    def destroy
        office_id = Patient.find(params[:id]).office.id
        Patient.find(params[:id]).delete
        redirect_to office_patients_path(office_id)
    end 

    private
    def patient_params
        params.require(:patient).permit(:name, :diagnosis, :user_id, :office_id)
    end 

    def find_patient
        @patient = current_user.patients.find_by(id: params[:id])
    end 
end
