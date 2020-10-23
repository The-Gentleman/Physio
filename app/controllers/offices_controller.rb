class OfficesController < ApplicationController
    def select
    end 
    
    def index
       @office = Office.all
    end 

    def show 
        @office = Office.find_by_state(params[:office][:state])
    end 




    private
    def office_params
        params.require(:office).permit(:state, :city)
    end 

    
end
