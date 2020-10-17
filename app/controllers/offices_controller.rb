class OfficesController < ApplicationController

    def index
        @offices = Office.all
    end 

    def show 
        @office = Office.find_by(id: params[:id])
    end 
    
end
