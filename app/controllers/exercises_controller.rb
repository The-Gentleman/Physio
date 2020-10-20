class ExercisesController < ApplicationController

    def new 
    end 

    def create 
    end 


    def index
    end 

    private
    def exercise_params
        params.require[:exercise].permit(:name, :reps, :patient_id)
    end 
end
