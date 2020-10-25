class ExercisesController < ApplicationController

    def show 
        @exercise = Exercise.find(params[:id])
    end 

    def index 
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
            @exercises = @patient.exercise
            binding.pry
        else 
            @exercises = Exercise.all
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
