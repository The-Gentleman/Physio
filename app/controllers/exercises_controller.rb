class ExercisesController < ApplicationController

    def all_exercises
        @exercises = Exercise.all
    end

    def index 
        redirect_if_not_current_user
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
            @exercises = @patient.exercises
        else 
            @exercises = Exercise.all
        end 
    end 

    def new 
        redirect_if_not_current_user
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
            @exercise = @patient.exercises.build
        else 
            @exercise = Exercise.new
        end 
    end 
    
    def create 
        @exercise = Exercise.new(exercise_params)
        if @exercise.save
            redirect_to patient_path(@exercise.patient)
         else 
            render :new
        end 
    end 

    def edit 
        redirect_if_not_current_user
        @exercise = Exercise.find(params[:id])
        @patient = @exercise.patient
    end 

    def update
        @exercise = Exercise.find_by(id: params[:id])
        if @exercise.update(exercise_params)
            redirect_to patient_exercises_path(@exercise.patient)
        else
            render :edit 
        end 
    end 

    def destroy
        patient = Exercise.find(params[:id]).patient
        Exercise.find(params[:id]).delete 
        redirect_to patient_exercises_path(patient)
    end 
    
    
    
    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :patient_id)
    end 
    
    def redirect_if_not_current_user
        if params[:patient_id]
            patient = Patient.find(params[:patient_id])
        elsif params[:patient_id] == nil 
            patient = Exercise.find(params[:id]).patient
        end 
        redirect_to select_path if !current_user.patients.include?(patient)
    end

end
