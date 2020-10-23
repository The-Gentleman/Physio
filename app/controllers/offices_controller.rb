class OfficesController < ApplicationController
    def select
    end 
    
    def index
       @offices = Office.alpha
    end 

    def show 
        @office = Office.find_by_state(params[:office][:state])
    end 




    private
    def office_params
        params.require(:office).permit(:state, :city)
    end 

    
end
