class PatientsController < ApplicationController

    def search
        if params[:q] 
            @patient = Patient.patient_search(params[:q].downcase || params[:q].upcase)
        end 
    end 

    def index 
        if params[:office_id] && @office = Office.find_by_id(params[:office_id]) 
            @patients = @office.patients
        else 
            @patients = current_user.patients
        end 
        flash[:no_patients] = "You don't have any patients yet! Add one below."
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
            redirect_to_select_path 
        end 
    end 
    
    # @patient = current_user.patients.find_by(id: params[:id])
    def edit 
        find_patient
        if @patient 
            render :edit
        else
            redirect_to_select_path 
        end 
    end 

    def update
        find_patient
        if @patient.update(patient_params)
            redirect_to patient_path(@patient)
        else
            render :edit 
        end 
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

    def redirect_to_select_path
        flash[:unauthorized] = "You are not authorized to visit that page."
        redirect_to select_path
    end

end
