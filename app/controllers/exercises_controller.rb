class ExercisesController < ApplicationController

    def index
        @exercises = Exercise.all
    end 

    def show 
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
            @exercise = @patient.exercise
        else 
            render :new
        end 
    end 

    def new 
    end 
    
    def create 
    end 
    
    

    private
    def exercise_params
        params.require[:exercise].permit(:name, :reps, :patient_id)
    end 
end
