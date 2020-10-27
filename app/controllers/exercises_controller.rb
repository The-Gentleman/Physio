class ExercisesController < ApplicationController

    def show 
        @exercise = Exercise.find(params[:id])
    end 

    def index 
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
            @exercises = @patient.exercise
        else 
            @exercises = Exercise.all
        end 
    end 

    def new 
        if params[:patient_id] && @patient = Patient.find_by_id(params[:patient_id])
            @exercise = @patient.exercise.build
        else 
            @exercise = Exercise.new
        end 
    end 
    
    def create 
        # @exercise = Exercise.new(name: params[:exercise][:name], reps: params[:exercise][:reps], patient_id: params[:patient_id])
        @exercise = Exercise.new(exercise_params)
        patient = Patient.find(params[:patient_id])
        # binding.pry
        if @exercise.save
            redirect_to patient_path(patient)
         else 
            render :new
        end 
    end 



    private
    def exercise_params
        params.require(:exercise).permit(:name, :reps, :patient_id)
    end 
    
    

end
