class ExercisesController < ApplicationController

    # def index
    #     if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
    #         @exercises = @patient.exercise
    #     else 
    #         @exercises = Exercise.all
    #     end 
    # end 

    def all_exercises
        @exercises = Exercise.all
    end 


    def new 
        # if params[:patient_id] && patient = Patient.find_by_id(params[:patient_id])
        #     @exercise = patient.exercise.build
        # else 
        #     @exercise = Exercise.new
        # end 
    end 
    
    def create 
    end 
    
    

    private
    def exercise_params
        params.require[:exercise].permit(:name, :reps, :patient_id)
    end 
end
